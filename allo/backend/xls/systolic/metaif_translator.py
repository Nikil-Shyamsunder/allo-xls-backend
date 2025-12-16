"""Direct MLIR to DSLX translator for meta_if systolic arrays.

The meta_if constructs are compiled away into separate functions per grid position.
This translator analyzes the unrolled functions and generates DSLX proc code.
"""

from allo._mlir.dialects import func as func_d
from allo._mlir.dialects import affine as affine_d
from allo._mlir.dialects import arith as arith_d
import re


class MetaIfSystolicTranslator:
    """Translates unrolled meta_if systolic MLIR to DSLX."""
    
    def __init__(self, module_or_op):
        # Handle both Module objects and Operation objects
        if hasattr(module_or_op, 'body') and hasattr(module_or_op.body, 'operations'):
            # It's a Module object
            self.module = module_or_op
            self.module_op = None
            self.operations = module_or_op.body.operations
        elif hasattr(module_or_op, 'regions'):
            # It's an Operation with regions
            self.module = None
            self.module_op = module_or_op
            self.operations = module_or_op.regions[0].blocks[0].operations
        else:
            raise ValueError(f"Cannot extract operations from {type(module_or_op)}")
        
        self.functions = {}
        self.grid_size = None
        self.k_bound = None
        self.element_type = None
        self.stream_depth = None
        
    def analyze(self):
        """Analyze the module structure."""
        # Collect all functions
        for op in self.operations:
            if isinstance(op, func_d.FuncOp):
                func_name = op.name.value
                self.functions[func_name] = op
        
        # Classify functions by pattern
        self.top_func = None
        self.interior_funcs = []
        self.loader_funcs = []
        self.drain_funcs = []
        
        for name, func_op in self.functions.items():
            if 'top' in name.lower() or name.startswith('top_'):
                self.top_func = func_op
            elif self._is_interior_pe(func_op):
                self.interior_funcs.append((name, func_op))
            elif self._is_loader(func_op):
                self.loader_funcs.append((name, func_op))
            elif self._is_drain(func_op):
                self.drain_funcs.append((name, func_op))
        
        # Extract grid dimensions from function names
        self._extract_grid_size()
        
        # Extract K from interior PE
        if self.interior_funcs:
            self._extract_k_bound(self.interior_funcs[0][1])
        
        # Extract element type
        self._extract_element_type()
        
        return {
            'grid_size': self.grid_size,
            'k_bound': self.k_bound,
            'element_type': self.element_type,
            'stream_depth': self.stream_depth,
            'num_interior': len(self.interior_funcs),
            'num_loaders': len(self.loader_funcs),
            'num_drains': len(self.drain_funcs),
        }
    
    def _is_interior_pe(self, func_op):
        """Check if function is an interior PE (has MAC computation)."""
        # Interior PE has: stream_get x2, mulf, addf, stream_put x2
        try:
            has_mul = False
            has_add = False
            stream_get_count = 0
            stream_put_count = 0
            
            for block in func_op.body:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        for inner_op in op.body.operations:
                            op_name = inner_op.operation.name
                            if 'mulf' in op_name or 'mul' in op_name:
                                has_mul = True
                            if 'addf' in op_name or 'add' in op_name:
                                has_add = True
                            if 'stream_get' in op_name:
                                stream_get_count += 1
                            if 'stream_put' in op_name:
                                stream_put_count += 1
            
            return has_mul and has_add and stream_get_count >= 2 and stream_put_count >= 2
        except:
            return False
    
    def _is_loader(self, func_op):
        """Check if function is an input loader (has load + stream_put)."""
        try:
            has_load = False
            has_put = False
            has_get = False
            
            for block in func_op.body:
                for op in block.operations:
                    for inner_op in self._walk_ops(op):
                        op_name = inner_op.operation.name
                        if 'affine.load' in op_name:
                            has_load = True
                        if 'stream_put' in op_name:
                            has_put = True
                        if 'stream_get' in op_name:
                            has_get = True
            
            return has_load and has_put and not has_get
        except:
            return False
    
    def _is_drain(self, func_op):
        """Check if function is a drain (has stream_get only)."""
        try:
            has_get = False
            has_put = False
            
            for block in func_op.body:
                for op in block.operations:
                    for inner_op in self._walk_ops(op):
                        op_name = inner_op.operation.name
                        if 'stream_get' in op_name:
                            has_get = True
                        if 'stream_put' in op_name:
                            has_put = True
            
            return has_get and not has_put
        except:
            return False
    
    def _walk_ops(self, op):
        """Recursively walk operations."""
        yield op
        if hasattr(op, 'body'):
            if hasattr(op.body, 'operations'):
                for inner_op in op.body.operations:
                    yield from self._walk_ops(inner_op)
            else:
                for block in op.body:
                    for inner_op in block.operations:
                        yield from self._walk_ops(inner_op)
    
    def _extract_grid_size(self):
        """Extract M, N from function names like gemm_1_1, gemm_2_2."""
        max_i = 0
        max_j = 0
        
        for name in self.functions.keys():
            match = re.search(r'gemm_(\d+)_(\d+)', name)
            if match:
                i, j = int(match.group(1)), int(match.group(2))
                max_i = max(max_i, i)
                max_j = max(max_j, j)
        
        # Grid includes borders, so actual size is max - 1
        # e.g., gemm_0_0 to gemm_3_3 means 4x4 grid with 2x2 interior
        self.grid_size = {
            'rows': max_i - 1,  # Interior rows (M)
            'cols': max_j - 1,  # Interior cols (N)
            'total_rows': max_i + 1,
            'total_cols': max_j + 1,
        }
    
    def _extract_k_bound(self, func_op):
        """Extract K loop bound from interior PE."""
        try:
            for block in func_op.body:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        # Extract upper bound
                        upper_bound_map = op.attributes.get('upperBoundMap')
                        if upper_bound_map:
                            bound_str = str(upper_bound_map)
                            match = re.search(r'\((\d+)\)', bound_str)
                            if match:
                                self.k_bound = int(match.group(1))
                                return
        except:
            pass
        
        self.k_bound = 2  # Default
    
    def _extract_element_type(self):
        """Extract element type from stream type."""
        try:
            for op in self.operations:
                if isinstance(op, func_d.FuncOp):
                    for arg in op.arguments:
                        type_str = str(arg.type)
                        if 'stream' in type_str.lower():
                            # Extract: !allo.stream<f32, 4>
                            match = re.search(r'stream<(\w+),\s*(\d+)>', type_str)
                            if match:
                                elem_type = match.group(1)
                                self.stream_depth = int(match.group(2))
                                
                                # Map MLIR type to DSLX type
                                type_map = {
                                    'f32': 'u32',  # Placeholder - need to check signedness
                                    'i32': 's32',
                                    'ui32': 'u32',
                                }
                                self.element_type = type_map.get(elem_type, 'u32')
                                return
        except:
            pass
        
        self.element_type = 'u32'  # Default
        self.stream_depth = 4
    
    def generate_dslx(self):
        """Generate complete DSLX code."""
        info = self.analyze()
        
        M = info['grid_size']['rows']
        N = info['grid_size']['cols']
        K = info['k_bound']
        elem_type = info['element_type']
        
        dslx_code = []
        
        # Generate PE proc
        dslx_code.append(self._generate_pe_proc(K, elem_type))
        dslx_code.append("")
        
        # Generate SystolicArray proc
        dslx_code.append(self._generate_systolic_array_proc(M, N, K, elem_type))
        
        return "\n".join(dslx_code)
    
    def _generate_pe_proc(self, K, elem_type):
        """Generate PE proc from interior PE pattern."""
        return f"""proc PE<K: u32> {{
  a_in: chan<{elem_type}> in;
  b_in: chan<{elem_type}> in;
  a_out: chan<{elem_type}> out;
  b_out: chan<{elem_type}> out;
  c_out: chan<{elem_type}> out;

  config(
    a_in: chan<{elem_type}> in,
    b_in: chan<{elem_type}> in,
    a_out: chan<{elem_type}> out,
    b_out: chan<{elem_type}> out,
    c_out: chan<{elem_type}> out
  ) {{
    (a_in, b_in, a_out, b_out, c_out)
  }}

  init {{ ({elem_type}:0, u32:0) }}

  next(state: ({elem_type}, u32)) {{
    let (accum, k) = state;
    let (tok, a) = recv(join(), a_in);
    let (tok, b) = recv(tok, b_in);
    let prod = a * b;
    let new_accum = accum + prod;
    let tok = send(tok, a_out, a);
    let tok = send(tok, b_out, b);
    let new_k = k + u32:1;
    let tok = if new_k == K {{
      send(tok, c_out, new_accum)
    }} else {{
      tok
    }};
    let new_state = if new_k == K {{
      ({elem_type}:0, u32:0)
    }} else {{
      (new_accum, new_k)
    }};
    new_state
  }}
}}"""
    
    def _generate_systolic_array_proc(self, M, N, K, elem_type):
        """Generate SystolicArray proc from top-level function."""
        # Generate channel declarations for interior only (M x N)
        fifo_decls = []
        
        # A FIFOs: horizontal flow (M rows, N+1 columns)
        for i in range(M):
            for j in range(N + 1):
                fifo_decls.append(
                    f"    let (a_fifo_{i}_{j}_s, a_fifo_{i}_{j}_r) = "
                    f"chan<{elem_type}>(\"a_fifo_{i}_{j}\");"
                )
        
        # B FIFOs: vertical flow (N columns, M+1 rows)
        for j in range(N):
            for i in range(M + 1):
                fifo_decls.append(
                    f"    let (b_fifo_{i}_{j}_s, b_fifo_{i}_{j}_r) = "
                    f"chan<{elem_type}>(\"b_fifo_{i}_{j}\");"
                )
        
        # C output FIFOs: M x N
        for i in range(M):
            for j in range(N):
                fifo_decls.append(
                    f"    let (c_out_{i}_{j}_s, c_out_{i}_{j}_r) = "
                    f"chan<{elem_type}>(\"c_out_{i}_{j}\");"
                )
        
        # Generate PE spawns for interior only (M x N)
        pe_spawns = []
        for i in range(M):
            for j in range(N):
                pe_spawns.append(
                    f"    spawn PE<u32:{K}>(a_fifo_{i}_{j}_r, b_fifo_{i}_{j}_r, "
                    f"a_fifo_{i}_{j+1}_s, b_fifo_{i+1}_{j}_s, c_out_{i}_{j}_s);"
                )
        
        # Generate input loading (replicate edge loaders inline)
        input_loads = []
        input_loads.append("    let tok = join();")
        
        # Load A rows
        for i in range(M):
            for k in range(K):
                input_loads.append(f"    let (tok, a_{i}_{k}) = recv(tok, a_row_{i});")
                input_loads.append(f"    let tok = send(tok, a_fifo_{i}_0_s, a_{i}_{k});")
        
        # Load B columns
        for j in range(N):
            for k in range(K):
                input_loads.append(f"    let (tok, b_{k}_{j}) = recv(tok, b_col_{j});")
                input_loads.append(f"    let tok = send(tok, b_fifo_0_{j}_s, b_{k}_{j});")
        
        # Collect outputs
        output_collects = []
        for i in range(M):
            for j in range(N):
                output_collects.append(f"    let (tok, c_{i}_{j}) = recv(tok, c_out_{i}_{j}_r);")
        
        # Drain edge outputs
        drain_ops = []
        for i in range(M):
            for k in range(K):
                drain_ops.append(f"    let (tok, _) = recv(tok, a_fifo_{i}_{N}_r);")
        for j in range(N):
            for k in range(K):
                drain_ops.append(f"    let (tok, _) = recv(tok, b_fifo_{M}_{j}_r);")
        
        # Assemble result matrix
        result_rows = []
        for i in range(M):
            row_elems = [f"c_{i}_{j}" for j in range(N)]
            result_rows.append(f"[{', '.join(row_elems)}]")
        result_matrix = f"    let C = {elem_type}[{M}][{N}]:[{', '.join(result_rows)}];"
        
        # Input channels
        input_chans = [f"a_row_{i}: chan<{elem_type}> in" for i in range(M)]
        input_chans += [f"b_col_{j}: chan<{elem_type}> in" for j in range(N)]
        
        return f"""pub proc SystolicArray {{
  {'; '.join(input_chans)};
  c_result: chan<{elem_type}[{M}][{N}]> out;

  config(
    {', '.join(input_chans)},
    c_result: chan<{elem_type}[{M}][{N}]> out
  ) {{
    ({', '.join([f'a_row_{i}' for i in range(M)] + [f'b_col_{j}' for j in range(N)] + ['c_result'])})
  }}

  init {{ () }}

  next(state: ()) {{
{chr(10).join(fifo_decls)}
{chr(10).join(pe_spawns)}
{chr(10).join(input_loads)}
{chr(10).join(output_collects)}
{chr(10).join(drain_ops)}
{result_matrix}
    let tok = send(tok, c_result, C);
  }}
}}"""


def translate_metaif_systolic_to_dslx(module):
    """Main entry point for translation."""
    translator = MetaIfSystolicTranslator(module)
    return translator.generate_dslx()
