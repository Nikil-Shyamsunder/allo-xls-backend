"""MLIR to DSLX proc-based lowering for streaming/dataflow patterns."""

from allo._mlir.ir import Operation, MemRefType, FunctionType, Attribute
from allo._mlir.ir import IntegerAttr, FloatAttr, DenseElementsAttr, StringAttr
from allo._mlir.dialects import affine as affine_d
from allo._mlir.dialects import func as func_d
from allo._mlir.dialects import arith as arith_d
from allo._mlir.dialects import memref as memref_d
import re


class StreamingPattern:
    """Detects and analyzes streaming/dataflow patterns in MLIR."""

    def __init__(self, module_op):
        self.module_op = module_op
        self.streaming_memrefs = set()
        self.dataflow_funcs = set()
        self.pipelined_loops = {}
        self.pe_instances = {}

    def analyze(self):
        """Analyze module to detect streaming patterns."""
        for op in self.module_op.body.operations:
            if isinstance(op, func_d.FuncOp):
                self._analyze_function(op)

        return self.has_streaming_pattern()

    def _analyze_function(self, func_op):
        """Analyze a single function for streaming patterns."""
        # Check for dataflow attribute
        if func_op.attributes and 'dataflow' in func_op.attributes:
            self.dataflow_funcs.add(func_op.name.value)

        # Check function arguments for streaming memrefs
        for arg in func_op.arguments:
            if isinstance(arg.type, MemRefType):
                # Check if memref has streaming annotation
                if self._is_streaming_memref(arg.type):
                    self.streaming_memrefs.add(str(arg))

        # Analyze body for streaming allocations and pipelined loops
        try:
            for block in func_op.body:
                for op in block.operations:
                    self._analyze_op(op, func_op.name.value)
        except:
            pass

    def _analyze_op(self, op, func_name):
        """Recursively analyze operations."""
        if isinstance(op, memref_d.AllocOp):
            if self._is_streaming_memref(op.result.type):
                try:
                    name_attr = op.attributes.get('name')
                    if name_attr:
                        name = str(name_attr).strip('"')
                        self.streaming_memrefs.add(name)
                except:
                    pass

        elif isinstance(op, affine_d.AffineForOp):
            # Check for pipeline_ii attribute
            try:
                if 'pipeline_ii' in op.attributes:
                    loop_name_attr = op.attributes.get('loop_name') if hasattr(op.attributes, 'get') else op.attributes['loop_name'] if 'loop_name' in op.attributes else None
                    loop_name = str(loop_name_attr).strip('"') if loop_name_attr else 'unknown'
                    self.pipelined_loops[loop_name] = op.attributes['pipeline_ii']
            except:
                pass

            # Recurse into loop body
            try:
                for block in op.body:
                    for nested in block.operations:
                        self._analyze_op(nested, func_name)
            except:
                pass

        elif isinstance(op, func_d.CallOp):
            # Track PE instances by looking for pattern like PE_kernel_X_Y
            callee = str(op.attributes.get('callee', '')).strip('"@')
            match = re.match(r'(.+)_(\d+)_(\d+)$', callee)
            if match:
                base_name, row, col = match.groups()
                if base_name not in self.pe_instances:
                    self.pe_instances[base_name] = []
                self.pe_instances[base_name].append((int(row), int(col)))

    def _is_streaming_memref(self, memref_type):
        """Check if a memref type has streaming annotation."""
        if not isinstance(memref_type, MemRefType):
            return False

        # Check memory space attribute for "stream:N;SST" pattern
        mem_space = memref_type.memory_space
        if mem_space:
            mem_str = str(mem_space)
            return 'stream:' in mem_str or 'SST' in mem_str

        return False

    def has_streaming_pattern(self):
        """Return True if streaming/dataflow patterns detected."""
        return (len(self.streaming_memrefs) > 0 or
                len(self.dataflow_funcs) > 0 or
                len(self.pipelined_loops) > 0 or
                len(self.pe_instances) > 0)


class PEExtractor:
    """Extract PE (Processing Element) structure from MLIR function."""

    def __init__(self, func_op):
        self.func_op = func_op
        self.name = func_op.name.value
        self.streaming_inputs = []
        self.streaming_outputs = []
        self.accumulators = []
        self.loop_bounds = {}

    def extract(self):
        """Extract PE structure."""
        # Analyze function signature
        for i, arg in enumerate(self.func_op.arguments):
            if isinstance(arg.type, MemRefType):
                if self._is_streaming_memref(arg.type):
                    # Determine if input or output based on usage
                    is_output = self._is_output_arg(arg, i)
                    stream_info = {
                        'arg_index': i,
                        'type': arg.type,
                        'name': f'arg{i}'
                    }
                    if is_output:
                        self.streaming_outputs.append(stream_info)
                    else:
                        self.streaming_inputs.append(stream_info)

        # Analyze body
        try:
            for block in self.func_op.body:
                for op in block.operations:
                    self._analyze_for_pe(op)
        except:
            pass

        return {
            'name': self.name,
            'streaming_inputs': self.streaming_inputs,
            'streaming_outputs': self.streaming_outputs,
            'accumulators': self.accumulators,
            'loop_bounds': self.loop_bounds
        }

    def _is_streaming_memref(self, memref_type):
        """Check if memref is streaming."""
        if not isinstance(memref_type, MemRefType):
            return False
        mem_space = memref_type.memory_space
        if mem_space:
            mem_str = str(mem_space)
            return 'stream:' in mem_str or 'SST' in mem_str
        return False

    def _is_output_arg(self, arg, arg_index):
        """Determine if argument is output based on store operations."""
        # Scan body for stores to this arg
        try:
            for block in self.func_op.body:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        for inner_block in op.body:
                            for nested in inner_block.operations:
                                if isinstance(nested, affine_d.AffineStoreOp):
                                    if nested.memref == arg:
                                        return True
        except:
            pass
        return False

    def _analyze_for_pe(self, op):
        """Analyze operations to extract PE info."""
        if isinstance(op, memref_d.AllocOp):
            # Track accumulators
            try:
                name_attr = op.attributes.get('name')
                if name_attr:
                    name = str(name_attr).strip('"')
                    shape = list(op.result.type.shape) if isinstance(op.result.type, MemRefType) else []
                    self.accumulators.append({'name': name, 'shape': shape})
            except:
                pass

        elif isinstance(op, affine_d.AffineForOp):
            # Extract loop bounds
            try:
                lb = self._extract_bound(op.lowerBoundMap)
                ub = self._extract_bound(op.upperBoundMap)
                loop_name = str(op.attributes.get('loop_name', 'k')).strip('"')
                self.loop_bounds[loop_name] = {'lb': lb, 'ub': ub}

                # Recurse into body
                try:
                    for inner_block in op.body:
                        for nested in inner_block.operations:
                            self._analyze_for_pe(nested)
                except:
                    pass
            except:
                pass

    def _extract_bound(self, map_like):
        """Extract constant from affine map."""
        try:
            amap = map_like.value
            expr = amap.results[0]
            if hasattr(expr, "value"):
                return expr.value
            expr_str = str(expr).strip()
            if expr_str.isdigit():
                return int(expr_str)
            return 0
        except:
            return 0


class ProcGenerator:
    """Generate DSLX proc code from extracted PE structure."""

    def __init__(self, pe_info, base_name="PE"):
        self.pe_info = pe_info
        self.base_name = base_name

    def generate_proc(self):
        """Generate DSLX proc definition."""
        lines = []

        # Import float32 if needed
        lines.append("import float32;")
        lines.append("type F32 = float32::F32;")
        lines.append("")

        # Determine K from loop bounds
        K = 4  # default
        if 'k' in self.pe_info['loop_bounds']:
            K = self.pe_info['loop_bounds']['k']['ub']

        # Generate proc header
        lines.append(f"pub proc {self.base_name}<row: u32, col: u32, K: u32> {{")

        # Generate channel declarations
        # For now, assume standard systolic array pattern:
        # a_in, b_in (inputs), a_out, b_out (pass-through), c_out (result)
        lines.append("  a_in:  chan<F32> in;")
        lines.append("  b_in:  chan<F32> in;")
        lines.append("  a_out: chan<F32> out;")
        lines.append("  b_out: chan<F32> out;")
        lines.append("  c_out: chan<F32> out;")
        lines.append("")

        # Config
        lines.append("  config(a_in: chan<F32> in, b_in: chan<F32> in,")
        lines.append("         a_out: chan<F32> out, b_out: chan<F32> out,")
        lines.append("         c_out: chan<F32> out) {")
        lines.append("    (a_in, b_in, a_out, b_out, c_out)")
        lines.append("  }")
        lines.append("")

        # Init - accumulator + iteration counter
        lines.append("  init { (float32::zero(u1:0), u32:0) }")
        lines.append("")

        # Next function
        lines.append("  next(state: (F32, u32)) {")
        lines.append("    let (accum, k) = state;")
        lines.append("    let (tok, a) = recv(join(), a_in);")
        lines.append("    let (tok, b) = recv(tok, b_in);")
        lines.append("")
        lines.append("    let prod = float32::mul(a, b);")
        lines.append("    let new_accum = float32::add(accum, prod);")
        lines.append("")
        lines.append("    let tok = send(tok, a_out, a);")
        lines.append("    let tok = send(tok, b_out, b);")
        lines.append("")
        lines.append("    let new_k = k + u32:1;")
        lines.append("    let tok = if new_k == K {")
        lines.append("      send(tok, c_out, new_accum)")
        lines.append("    } else {")
        lines.append("      tok")
        lines.append("    };")
        lines.append("")
        lines.append("    (new_accum, new_k)")
        lines.append("  }")
        lines.append("}")

        return "\n".join(lines)


class MlirToDslxProcLowerer:
    """Main lowerer for MLIR → DSLX proc-based code generation."""

    def __init__(self, module_op):
        self.module_op = module_op
        self.pattern_detector = StreamingPattern(module_op)

    def should_use_procs(self):
        """Determine if proc-based lowering should be used."""
        return self.pattern_detector.analyze()

    def lower(self):
        """Lower MLIR module to DSLX procs."""
        if not self.should_use_procs():
            return None  # Fall back to function-based lowering

        lines = []

        # Find PE functions
        pe_functions = []
        for op in self.module_op.body.operations:
            if isinstance(op, func_d.FuncOp):
                # Look for PE kernel pattern
                if 'PE_kernel' in op.name.value or 'PE' in op.name.value:
                    pe_functions.append(op)

        if not pe_functions:
            return None

        # Extract PE structure from first PE function (they should all be similar)
        extractor = PEExtractor(pe_functions[0])
        pe_info = extractor.extract()

        # Generate proc definition
        generator = ProcGenerator(pe_info, base_name="PE")
        proc_code = generator.generate_proc()
        lines.append(proc_code)

        # Add comment about proc network generation
        lines.append("")
        lines.append("// TODO: Generate proc network from topology")
        lines.append("// Detected PE instances: " + str(self.pattern_detector.pe_instances))
        lines.append("// Streaming memrefs: " + str(list(self.pattern_detector.streaming_memrefs)[:5]))

        return "\n".join(lines)
