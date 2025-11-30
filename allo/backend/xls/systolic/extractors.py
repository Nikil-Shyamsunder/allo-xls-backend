"""Extract information from systolic array MLIR IR."""

import re
from allo._mlir.ir import MemRefType
from allo._mlir.dialects import func as func_d
from allo._mlir.dialects import memref as memref_d
from allo._mlir.dialects import affine as affine_d
from allo._mlir.dialects import arith as arith_d


class GridExtractor:
    """Extract grid dimensions from systolic tile function."""

    def __init__(self, tile_func):
        self.tile_func = tile_func

    def extract(self):
        """Extract grid dimensions (rows, cols)."""
        # Find nested loops with PE calls
        pe_loops = self._find_pe_loop_nest()

        if not pe_loops or len(pe_loops) < 2:
            raise ValueError("Could not find PE grid loops")

        # Extract loop bounds
        outer_loop, inner_loop = pe_loops[0], pe_loops[1]

        rows = self._extract_upper_bound(outer_loop)
        cols = self._extract_upper_bound(inner_loop)

        return {
            'rows': rows,
            'cols': cols,
            'outer_loop': outer_loop,
            'inner_loop': inner_loop
        }

    def _find_pe_loop_nest(self):
        """Find the nested loops that contain PE calls."""
        try:
            # For FuncOp, .body is a Region, need .blocks
            for block in self.tile_func.body.blocks:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        # Check if this loop has a nested loop with func.call
                        result = self._check_for_pe_pattern(op)
                        if result:
                            return result
        except Exception as e:
            import traceback
            traceback.print_exc()
        return None

    def _check_for_pe_pattern(self, outer_loop):
        """Check if loop nest matches PE grid pattern."""
        try:
            # For affine.for, .body is directly a Block
            for op in outer_loop.body.operations:
                if isinstance(op, affine_d.AffineForOp):
                    # Check if inner loop has func.call
                    has_call = self._has_func_call(op)
                    if has_call:
                        return [outer_loop, op]
        except Exception as e:
            import traceback
            traceback.print_exc()
        return None

    def _has_func_call(self, loop_op):
        """Check if loop contains func.call."""
        try:
            # For affine.for, .body is directly a Block
            for op in loop_op.body.operations:
                if isinstance(op, func_d.CallOp):
                    return True
        except:
            pass
        return False

    def _extract_upper_bound(self, loop_op):
        """Extract upper bound from affine.for loop."""
        try:
            # Get upper bound map
            ub_map = loop_op.upperBoundMap.value
            # Get first result (constant)
            expr = ub_map.results[0]
            # Try to get constant value
            if hasattr(expr, 'value'):
                return expr.value
            # Try parsing string representation
            expr_str = str(expr).strip()
            match = re.search(r'\d+', expr_str)
            if match:
                return int(match.group())
        except:
            pass
        return 0


class FIFOAnalyzer:
    """Analyze FIFO buffer allocations."""

    def __init__(self, tile_func):
        self.tile_func = tile_func

    def extract(self):
        """Extract FIFO buffer metadata."""
        fifos = {}

        try:
            # For FuncOp, .body is a Region, need .blocks
            for block in self.tile_func.body.blocks:
                for op in block.operations:
                    if isinstance(op, memref_d.AllocOp):
                        fifo_info = self._analyze_alloc(op)
                        if fifo_info:
                            fifos[fifo_info['name']] = fifo_info
        except:
            pass

        return fifos

    def _analyze_alloc(self, alloc_op):
        """Analyze a single memref.alloc operation."""
        try:
            # Get name attribute
            name_attr = alloc_op.attributes.get('name')
            if not name_attr:
                return None

            name = str(name_attr).strip('"')

            # Only analyze FIFOs
            if 'fifo' not in name.lower():
                return None

            # Get memref type
            memref_type = alloc_op.result.type
            if not isinstance(memref_type, MemRefType):
                return None

            # Extract shape and element type
            shape = list(memref_type.shape)
            elem_type = memref_type.element_type

            return {
                'name': name,
                'shape': shape,
                'element_type': str(elem_type),
                'op': alloc_op
            }
        except:
            return None


class ConnectivityExtractor:
    """Extract PE connectivity pattern from subview operations."""

    def __init__(self, tile_func, grid_info):
        self.tile_func = tile_func
        self.grid_info = grid_info
        self.outer_loop = grid_info['outer_loop']
        self.inner_loop = grid_info['inner_loop']

    def extract(self):
        """Extract connectivity pattern.

        Returns dict mapping argument position to connection info:
        {
            0: {'fifo': 'A_fifo', 'indices': ['i', 'j', 0], 'direction': 'in'},
            1: {'fifo': 'B_fifo', 'indices': ['j', 'i', 0], 'direction': 'in'},
            2: {'fifo': 'A_fifo', 'indices': ['i', 'j+1', 0], 'direction': 'out'},
            3: {'fifo': 'B_fifo', 'indices': ['j', 'i+1', 0], 'direction': 'out'},
        }
        """
        # Find func.call in inner loop
        pe_call = self._find_pe_call()
        if not pe_call:
            raise ValueError("Could not find PE call in grid loops")

        # Find subview operations before the call
        subviews = self._find_subviews_before_call(pe_call)

        # Analyze each subview
        connectivity = {}
        for idx, subview in enumerate(subviews):
            conn_info = self._analyze_subview(subview, idx)
            if conn_info:
                connectivity[idx] = conn_info

        return connectivity

    def _find_pe_call(self):
        """Find the func.call operation in inner loop."""
        try:
            # For affine.for, .body is directly a Block
            for op in self.inner_loop.body.operations:
                if isinstance(op, func_d.CallOp):
                    return op
        except:
            pass
        return None

    def _find_subviews_before_call(self, pe_call):
        """Find memref.subview operations before PE call."""
        subviews = []
        try:
            # For affine.for, .body is directly a Block
            for op in self.inner_loop.body.operations:
                if op == pe_call:
                    break
                if isinstance(op, memref_d.SubViewOp):
                    subviews.append(op)
        except:
            pass
        return subviews

    def _analyze_subview(self, subview_op, arg_index):
        """Analyze a subview operation to extract connectivity."""
        try:
            # Get source memref
            source = subview_op.source

            # Get FIFO name from source
            fifo_name = self._get_fifo_name(source)

            # Get indices (static offsets)
            indices = self._extract_indices(subview_op)

            # Determine direction (in/out) based on arg position
            # Convention: first 2 args are inputs, next 2 are outputs
            direction = 'in' if arg_index < 2 else 'out'

            return {
                'fifo': fifo_name,
                'indices': indices,
                'direction': direction,
                'arg_index': arg_index
            }
        except Exception as e:
            return None

    def _get_fifo_name(self, memref_val):
        """Get FIFO name from memref value."""
        try:
            # Trace back to the alloc operation
            defining_op = memref_val.owner
            if isinstance(defining_op, memref_d.AllocOp):
                name_attr = defining_op.attributes.get('name')
                if name_attr:
                    return str(name_attr).strip('"')
        except:
            pass
        return "unknown"

    def _extract_indices(self, subview_op):
        """Extract index pattern from subview operation.

        Returns list like ['i', 'j', 0] or ['i', 'j+1', 0]
        """
        indices = []

        try:
            # Get the offset operands
            offsets = list(subview_op.offsets)

            # Get loop induction variables for reference
            outer_iv = self.outer_loop.induction_variable
            inner_iv = self.inner_loop.induction_variable

            for offset_val in offsets:
                index_expr = self._parse_index_value(offset_val, outer_iv, inner_iv)
                indices.append(index_expr)

        except Exception as e:
            # Fallback: return generic pattern
            return ['i', 'j', 0]

        return indices

    def _parse_index_value(self, val, outer_iv, inner_iv):
        """Parse an index value to symbolic form."""
        # Check if it's the outer loop IV
        if val == outer_iv:
            return 'i'

        # Check if it's the inner loop IV
        if val == inner_iv:
            return 'j'

        # Check if it's a constant
        try:
            defining_op = val.owner
            if isinstance(defining_op, arith_d.ConstantOp):
                # Try to extract integer value
                attr = defining_op.attributes.get('value')
                if attr:
                    return int(str(attr))
        except:
            pass

        # Check if it's arithmetic (like j+1)
        try:
            defining_op = val.owner
            if isinstance(defining_op, arith_d.AddIOp):
                # It's an addition - check operands
                lhs = defining_op.operands[0]
                rhs = defining_op.operands[1]

                # Parse recursively
                lhs_expr = self._parse_index_value(lhs, outer_iv, inner_iv)
                rhs_expr = self._parse_index_value(rhs, outer_iv, inner_iv)

                # Construct expression string
                if isinstance(rhs_expr, int):
                    return f"{lhs_expr}+{rhs_expr}"
                else:
                    return f"{lhs_expr}+{rhs_expr}"
        except:
            pass

        # Default: return as symbolic
        return 'unknown'


class MatrixDimensionExtractor:
    """Extract matrix dimensions (M, N, K) from top-level function signature."""

    def __init__(self, top_func):
        self.top_func = top_func

    def extract(self):
        """Extract M, N, K dimensions from function signature.

        Returns:
            dict with 'M', 'N', 'K' keys
        """
        try:
            # Get function arguments
            args = self.top_func.arguments
            if len(args) < 2:
                raise ValueError("Expected at least 2 arguments (A, B)")

            # Get A matrix type (first argument)
            a_type = args[0].type
            if isinstance(a_type, MemRefType):
                a_shape = list(a_type.shape)
                M = a_shape[0] if len(a_shape) >= 2 else 1
                K = a_shape[1] if len(a_shape) >= 2 else a_shape[0]
            else:
                raise ValueError(f"Expected MemRefType for arg 0, got {type(a_type)}")

            # Get B matrix type (second argument)
            b_type = args[1].type
            if isinstance(b_type, MemRefType):
                b_shape = list(b_type.shape)
                # B is K×N, so N is the second dimension
                N = b_shape[1] if len(b_shape) >= 2 else b_shape[0]
            else:
                raise ValueError(f"Expected MemRefType for arg 1, got {type(b_type)}")

            return {
                'M': M,
                'N': N,
                'K': K
            }
        except Exception as e:
            import traceback
            traceback.print_exc()
            # Return defaults
            return {'M': 2, 'N': 2, 'K': 4}


class PEAnalyzer:
    """Analyze PE kernel function structure."""

    def __init__(self, pe_func):
        self.pe_func = pe_func

    def extract(self):
        """Extract PE kernel information."""
        # Extract loop bound K
        k_bound = self._extract_k_bound()

        # Extract accumulator info
        accumulator = self._find_accumulator()

        # Determine element type from function signature
        elem_type = self._get_element_type()

        # Extract argument information
        args_info = self._extract_arguments()

        # Extract computation pattern
        computation = self._extract_computation_pattern()

        return {
            'name': self.pe_func.name.value,
            'k_bound': k_bound,
            'accumulator': accumulator,
            'element_type': elem_type,
            'num_args': len(self.pe_func.arguments),
            'arguments': args_info,
            'computation': computation,
            'func_op': self.pe_func  # Include the function op for lowering
        }

    def _extract_k_bound(self):
        """Extract K loop bound from PE kernel."""
        try:
            # For FuncOp, .body is a Region, need .blocks
            for block in self.pe_func.body.blocks:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        # This should be the K loop
                        ub_map = op.upperBoundMap.value
                        expr = ub_map.results[0]
                        if hasattr(expr, 'value'):
                            return expr.value
                        # Try parsing
                        expr_str = str(expr).strip()
                        match = re.search(r'\d+', expr_str)
                        if match:
                            return int(match.group())
        except:
            pass
        return 4  # Default

    def _find_accumulator(self):
        """Find accumulator variable in PE kernel."""
        try:
            # For FuncOp, .body is a Region, need .blocks
            for block in self.pe_func.body.blocks:
                for op in block.operations:
                    if isinstance(op, memref_d.AllocOp):
                        # Use dictionary-style access for attributes
                        name_attr = op.attributes.get('name') if hasattr(op.attributes, 'get') else op.attributes['name'] if 'name' in op.attributes else None
                        if name_attr:
                            name = str(name_attr).strip('"')
                            if name in ['v', 'accum', 'sum']:
                                return {'name': name, 'type': str(op.result.type)}
        except:
            pass
        return {'name': 'v', 'type': 'memref<f32>'}

    def _get_element_type(self):
        """Get element type from function arguments."""
        try:
            # Check first argument (should be memref)
            if len(self.pe_func.arguments) > 0:
                arg_type = self.pe_func.arguments[0].type
                if isinstance(arg_type, MemRefType):
                    elem_type = str(arg_type.element_type)
                    # Map MLIR types to DSLX types
                    if 'f32' in elem_type:
                        return 'F32'
                    elif 'i32' in elem_type or elem_type == 'ui32':
                        return 'u32'
                    elif 'i8' in elem_type:
                        return 'i8'
        except:
            pass
        return 'u32'  # Default

    def _extract_arguments(self):
        """Extract argument information from PE function.

        Returns list of dicts with argument metadata.
        """
        args_info = []

        try:
            for idx, arg in enumerate(self.pe_func.arguments):
                arg_type = arg.type

                # Get name hint from attributes
                arg_name = self._infer_arg_name(idx, arg)

                if isinstance(arg_type, MemRefType):
                    shape = list(arg_type.shape)
                    elem_type = str(arg_type.element_type)

                    # Infer role based on pattern
                    if idx == 0:
                        role = 'a_in'
                    elif idx == 1:
                        role = 'b_in'
                    elif idx == 2:
                        role = 'a_out'
                    elif idx == 3:
                        role = 'b_out'
                    elif idx == 4:
                        role = 'c_out'
                    else:
                        role = 'data'

                    args_info.append({
                        'index': idx,
                        'name': arg_name,
                        'type': str(arg_type),
                        'element_type': elem_type,
                        'shape': shape,
                        'role': role,
                        'is_index': False
                    })
                else:
                    # Index type argument
                    args_info.append({
                        'index': idx,
                        'name': arg_name,
                        'type': str(arg_type),
                        'role': 'index',
                        'is_index': True
                    })
        except Exception as e:
            # Return minimal info if extraction fails
            for idx in range(len(self.pe_func.arguments)):
                args_info.append({
                    'index': idx,
                    'name': f'arg{idx}',
                    'role': 'unknown'
                })

        return args_info

    def _infer_arg_name(self, arg_idx, arg_val):
        """Infer argument name from usage in function body."""
        try:
            # Look for loads/stores that reference this argument
            for block in self.pe_func.body.blocks:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineLoadOp):
                        # Check if this load is from our argument
                        if op.memref == arg_val:
                            # Get the 'from' attribute
                            from_attr = op.attributes.get('from') if hasattr(op.attributes, 'get') else op.attributes['from'] if 'from' in op.attributes else None
                            if from_attr:
                                return str(from_attr).strip('"')
                    elif isinstance(op, affine_d.AffineStoreOp):
                        # Check if this store is to our argument
                        if op.memref == arg_val:
                            # Get the 'to' attribute
                            to_attr = op.attributes.get('to') if hasattr(op.attributes, 'get') else op.attributes['to'] if 'to' in op.attributes else None
                            if to_attr:
                                return str(to_attr).strip('"')
        except:
            pass

        # Fallback name
        return f'arg{arg_idx}'

    def _extract_computation_pattern(self):
        """Extract the computation pattern from PE kernel.

        Returns dict describing the operation:
        {
            'type': 'MAC',  # Multiply-Accumulate
            'operations': ['mul', 'add'],
            'has_passthrough': True,
            'inputs': ['a', 'b'],
            'outputs': ['a_out', 'b_out', 'c_out']
        }
        """
        pattern = {
            'type': 'unknown',
            'operations': [],
            'has_passthrough': False,
            'inputs': [],
            'outputs': []
        }

        try:
            # Look for operations in the loop body
            has_mul = False
            has_add = False
            has_passthrough = False

            for block in self.pe_func.body.blocks:
                for op in block.operations:
                    if isinstance(op, affine_d.AffineForOp):
                        # Check operations inside the K loop
                        for loop_block in op.body.operations:
                            op_name = type(loop_block).__name__

                            if 'MulFOp' in op_name or 'MulIOp' in op_name:
                                has_mul = True
                                pattern['operations'].append('mul')
                            elif 'AddFOp' in op_name or 'AddIOp' in op_name:
                                has_add = True
                                pattern['operations'].append('add')
                            elif isinstance(loop_block, affine_d.AffineStoreOp):
                                # Check if storing to pass-through outputs
                                to_attr = loop_block.attributes.get('to') if hasattr(loop_block.attributes, 'get') else loop_block.attributes['to'] if 'to' in loop_block.attributes else None
                                if to_attr:
                                    to_name = str(to_attr).strip('"')
                                    if 'out' in to_name.lower():
                                        has_passthrough = True

            # Determine pattern type
            if has_mul and has_add:
                pattern['type'] = 'MAC'  # Multiply-Accumulate
            elif has_mul:
                pattern['type'] = 'MUL'
            elif has_add:
                pattern['type'] = 'ADD'

            pattern['has_passthrough'] = has_passthrough

            # Extract input/output names from arguments
            for arg_info in self._extract_arguments():
                if arg_info['role'] in ['a_in', 'b_in']:
                    pattern['inputs'].append(arg_info['name'])
                elif arg_info['role'] in ['a_out', 'b_out', 'c_out'] and not arg_info.get('is_index'):
                    pattern['outputs'].append(arg_info['name'])

        except Exception as e:
            # Return default pattern on error
            pattern['type'] = 'MAC'  # Assume MAC
            pattern['operations'] = ['mul', 'add']
            pattern['has_passthrough'] = True

        return pattern
