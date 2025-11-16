"""MLIR to DSLX lowering implementation."""

from allo._mlir.ir import Operation, MemRefType
from allo._mlir.ir import IntegerAttr, FloatAttr, DenseElementsAttr
from allo._mlir.dialects import affine as affine_d
from allo._mlir.dialects import func as func_d
from allo._mlir.dialects import arith as arith_d
from allo._mlir.dialects import linalg as linalg_d
from allo._mlir.dialects import memref as memref_d

from .codegen_context import CodegenContext
from .dslx_nodes import (
    DslxVar, DslxConst, DslxBinOp, DslxLoad, DslxStore,
    DslxFor, DslxLet, DslxArrayInit
)


class MlirToDslxLowerer:
    def __init__(self, func_op: func_d.FuncOp):
        self.func_op = func_op
        self.ctx = CodegenContext()

    def lower(self):
        params = []
        for i, arg in enumerate(self.func_op.arguments):
            if isinstance(arg.type, MemRefType):
                name = f"arg{i}"
                shape = list(arg.type.shape)
                self.ctx.memref_shapes[name] = shape
                self.ctx.bind(arg, DslxVar(name))
                type_str = "u32" + "".join(f"[{dim}]" for dim in shape)
                params.append((name, type_str))

        for op in self.func_op.body.blocks[0].operations:
            self.lower_op(op)

        if self.ctx.result_buffer:
            return_expr = self.ctx.result_buffer
        else:
            if self.ctx.memref_shapes:
                return_expr = list(self.ctx.memref_shapes.keys())[-1]
            else:
                return_expr = "arg0"

        return self.emit_dslx(params, return_expr)

    def lower_op(self, op: Operation):
        if isinstance(op, affine_d.AffineForOp):
            self.lower_for(op)
        elif isinstance(op, affine_d.AffineLoadOp):
            self.lower_load(op)
        elif isinstance(op, affine_d.AffineStoreOp):
            self.lower_store(op)
        elif isinstance(op, arith_d.ConstantOp):
            self.lower_constant(op)
        elif isinstance(op, arith_d.AddIOp):
            self.lower_add(op)
        elif isinstance(op, arith_d.MulIOp):
            self.lower_mul(op)
        elif isinstance(op, arith_d.ExtSIOp):
            self.lower_extsi(op)
        elif isinstance(op, arith_d.TruncIOp):
            self.lower_trunci(op)
        elif isinstance(op, linalg_d.FillOp):
            self.lower_fill(op)
        elif isinstance(op, memref_d.AllocOp):
            self.lower_alloc(op)
        elif isinstance(op, affine_d.AffineYieldOp):
            return
        elif isinstance(op, func_d.ReturnOp):
            return
        else:
            print("Warning: unhandled op", op.operation.name)

    def lower_constant(self, op):
        attr = op.value
        if isinstance(attr, IntegerAttr) or isinstance(attr, FloatAttr):
            raw = attr.value
        elif isinstance(attr, DenseElementsAttr):
            raw = list(attr)[0]
        else:
            raw = int(str(attr).split(":")[0])

        node = DslxConst(raw)
        self.ctx.bind(op.result, node)

    def lower_alloc(self, op: memref_d.AllocOp):
        try:
            name_attr = op.attributes['name']
            buf_name = name_attr.value if hasattr(name_attr, "value") else str(name_attr).strip('"')
        except (KeyError, AttributeError):
            buf_name = "C"

        memref_type = op.result.type
        if isinstance(memref_type, MemRefType):
            shape = list(memref_type.shape)
            self.ctx.memref_shapes[buf_name] = shape

        self.ctx.result_buffer = buf_name
        self.ctx.bind(op.result, DslxVar(buf_name))

    def lower_add(self, op: arith_d.AddIOp):
        lhs = self.ctx.lookup(op.lhs)
        rhs = self.ctx.lookup(op.rhs)
        node = DslxBinOp("+", lhs, rhs)
        self.ctx.bind(op.result, node)

    def lower_mul(self, op: arith_d.MulIOp):
        lhs = self.ctx.lookup(op.lhs)
        rhs = self.ctx.lookup(op.rhs)
        node = DslxBinOp("*", lhs, rhs)
        self.ctx.bind(op.result, node)

    def lower_extsi(self, op: arith_d.ExtSIOp):
        operand = self.ctx.lookup(op.operands[0])
        self.ctx.bind(op.result, operand)

    def lower_trunci(self, op: arith_d.TruncIOp):
        operand = self.ctx.lookup(op.operands[0])
        self.ctx.bind(op.result, operand)

    def lower_load(self, op: affine_d.AffineLoadOp):
        base = op.memref

        buf_node = self.ctx.lookup(base)
        if not isinstance(buf_node, DslxVar):
            raise RuntimeError(f"Unknown or non-buffer memref base: {base}")

        memref_name = buf_node.name

        idx = self.lower_affine_index(op.indices)
        node = DslxLoad(memref_name, idx)
        self.ctx.bind(op.result, node)

    def lower_store(self, op: affine_d.AffineStoreOp):
        base = op.memref

        buf_node = self.ctx.lookup(base)
        if not isinstance(buf_node, DslxVar):
            raise RuntimeError(f"Unknown or non-buffer memref base in store: {base}")

        memref_name = buf_node.name

        idx = self.lower_affine_index(op.indices)
        value = self.ctx.lookup(op.value)
        store = DslxStore(memref_name, idx, value)
        self.ctx.dslx_stmts.append(store)

    def lower_fill(self, op: linalg_d.FillOp):
        val = self.ctx.lookup(op.inputs[0])
        out_base = op.outputs[0]

        buf_node = self.ctx.lookup(out_base)
        if not isinstance(buf_node, DslxVar):
            raise RuntimeError(f"Unknown output buffer in fill: {out_base}")

        memref_name = buf_node.name

        if memref_name in self.ctx.memref_shapes:
            shape = self.ctx.memref_shapes[memref_name]
            init_expr = self._create_array_init(val, shape)
            self.ctx.dslx_stmts.append(DslxLet(memref_name, init_expr))
        else:
            self.ctx.dslx_stmts.append(DslxLet(memref_name, val))

    def _create_array_init(self, val, shape):
        return DslxArrayInit(val, shape)

    def lower_for(self, op: affine_d.AffineForOp):
        def get_constant_bound(map_like):
            amap = map_like.value
            expr = amap.results[0]

            if hasattr(expr, "value"):
                return expr.value

            expr_str = str(expr).strip()

            if expr_str.isdigit():
                return int(expr_str)

            if expr_str.startswith("-") and expr_str[1:].isdigit():
                return int(expr_str)

            if isinstance(expr, int):
                return expr

            raise NotImplementedError(
                f"Unsupported affine bound expr: {expr!r} (string form: {expr_str})"
            )

        lb = get_constant_bound(op.lowerBoundMap)
        ub = get_constant_bound(op.upperBoundMap)

        try:
            loop_name_attr = op.attributes.get('loop_name')
            if loop_name_attr:
                iter_name = str(loop_name_attr).strip('"')
            else:
                depth = len(self.ctx.loop_stack)
                iter_name = chr(ord('i') + depth)
        except:
            depth = len(self.ctx.loop_stack)
            iter_name = chr(ord('i') + depth) if depth < 26 else f"i{depth}"

        self.ctx.bind(op.induction_variable, DslxVar(iter_name))
        self.ctx.loop_stack.append(iter_name)

        body_nodes = []
        old_stmts = self.ctx.dslx_stmts
        self.ctx.dslx_stmts = body_nodes

        for nested in op.body.operations:
            self.lower_op(nested)

        loop = DslxFor(iter_name, lb, ub, body_nodes)
        self.ctx.dslx_stmts = old_stmts
        self.ctx.dslx_stmts.append(loop)

        self.ctx.loop_stack.pop()

    def lower_affine_index(self, indices):
        index_nodes = [self.ctx.lookup(idx) for idx in indices]
        if len(index_nodes) == 1:
            return index_nodes[0]
        else:
            return index_nodes

    def emit_dslx(self, params, return_expr):
        out = ["", ""]

        param_list = ", ".join(f"{name}: {typ}" for name, typ in params)

        if return_expr in self.ctx.memref_shapes:
            shape = self.ctx.memref_shapes[return_expr]
            ret_type = "u32" + "".join(f"[{dim}]" for dim in shape)
        else:
            ret_type = "u32[32][32]"

        out.append(f"fn gemm({param_list}) -> {ret_type} {{")

        for stmt in self.ctx.dslx_stmts:
            out.extend(self.emit_stmt(stmt, indent=1))

        out.append(f"  {return_expr}")
        out.append("}")

        return "\n".join(out)

    def emit_expr(self, node):
        if isinstance(node, DslxConst):
            return f"u32:{node.value}"
        if isinstance(node, DslxVar):
            return node.name
        if isinstance(node, DslxBinOp):
            return f"({self.emit_expr(node.lhs)} {node.op} {self.emit_expr(node.rhs)})"
        if isinstance(node, DslxLoad):
            if isinstance(node.index_expr, list):
                indices = "][".join(self.emit_expr(idx) for idx in node.index_expr)
                return f"{node.buffer_name}[{indices}]"
            else:
                return f"{node.buffer_name}[{self.emit_expr(node.index_expr)}]"
        if isinstance(node, DslxArrayInit):
            if len(node.shape) == 0:
                return self.emit_expr(node.elem_expr)
            elif len(node.shape) == 1:
                return f"[{self.emit_expr(node.elem_expr)}; {node.shape[0]}]"
            elif len(node.shape) == 2:
                inner = f"[{self.emit_expr(node.elem_expr)}; {node.shape[1]}]"
                return f"[{inner}; {node.shape[0]}]"
            else:
                return self.emit_expr(node.elem_expr)
        if isinstance(node, str):
            return node
        else:
            return f"/* Cannot emit expr for {type(node).__name__} */"

    def emit_stmt(self, stmt, indent):
        tab = "  " * indent
        if isinstance(stmt, DslxLet):
            return [f"{tab}let {stmt.name} = {self.emit_expr(stmt.expr)};"]
        if isinstance(stmt, DslxStore):
            val_expr = self.emit_expr(stmt.value_expr)
            if isinstance(stmt.index_expr, list):
                if len(stmt.index_expr) == 2:
                    i_expr = self.emit_expr(stmt.index_expr[0])
                    j_expr = self.emit_expr(stmt.index_expr[1])
                    return [f"{tab}let {stmt.buffer_name} = update({stmt.buffer_name}, {i_expr}, update({stmt.buffer_name}[{i_expr}], {j_expr}, {val_expr}));"]
                else:
                    idx_expr = ", ".join(self.emit_expr(idx) for idx in stmt.index_expr)
                    return [f"{tab}let {stmt.buffer_name} = update({stmt.buffer_name}, {idx_expr}, {val_expr});"]
            else:
                idx_expr = self.emit_expr(stmt.index_expr)
                return [f"{tab}let {stmt.buffer_name} = update({stmt.buffer_name}, {idx_expr}, {val_expr});"]
        if isinstance(stmt, DslxFor):
            stores = self._find_stores_in_body(stmt.body)

            if stores:
                accum_names = list(set(s.buffer_name for s in stores))
                accum_tuple = "(" + ", ".join(accum_names) + ")" if len(accum_names) > 1 else accum_names[0]

                out = [f"{tab}let {accum_tuple} = for ({stmt.iter_name}, {accum_tuple}) in range(u32:{stmt.lb}, u32:{stmt.ub}) {{"]
                for b in stmt.body:
                    out.extend(self.emit_stmt(b, indent + 1))
                out.append(f"{tab}  {accum_tuple}")
                out.append(f"{tab}}};")
            else:
                out = [f"{tab}for ({stmt.iter_name}, _) in range(u32:{stmt.lb}, u32:{stmt.ub}) {{"]
                for b in stmt.body:
                    out.extend(self.emit_stmt(b, indent + 1))
                out.append(f"{tab}  ()")
                out.append(f"{tab}}};")
            return out
        return [f"{tab}"]

    def _find_stores_in_body(self, body):
        stores = []
        for stmt in body:
            if isinstance(stmt, DslxStore):
                stores.append(stmt)
            elif isinstance(stmt, DslxFor):
                stores.extend(self._find_stores_in_body(stmt.body))
        return stores
