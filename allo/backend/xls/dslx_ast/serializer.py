"""Serializer for DSLX Proc AST to DSLX text.

Converts AST nodes to properly formatted DSLX code.
"""

from .proc_ast import *


class DslxProcSerializer:
    """Serializes DSLX Proc AST to text."""

    def __init__(self, indent_width=2):
        self.indent_width = indent_width
        self.indent_level = 0

    def serialize(self, node):
        """Serialize any AST node to DSLX text."""
        if isinstance(node, DslxModule):
            return self._serialize_module(node)
        elif isinstance(node, DslxProc):
            return self._serialize_proc(node)
        elif isinstance(node, DslxImport):
            return self._serialize_import(node)
        elif isinstance(node, DslxTypeAlias):
            return self._serialize_type_alias(node)
        elif isinstance(node, DslxExpr):
            return self._serialize_expr(node)
        elif isinstance(node, DslxStmt):
            return self._serialize_stmt(node)
        else:
            return str(node)

    def _indent(self):
        return " " * (self.indent_level * self.indent_width)

    def _serialize_module(self, module):
        """Serialize a complete module."""
        lines = []

        # Imports
        for imp in module.imports:
            lines.append(self._serialize_import(imp))

        # Type aliases
        if module.type_aliases:
            if module.imports:
                lines.append("")
            for alias in module.type_aliases:
                lines.append(self._serialize_type_alias(alias))

        # Procs
        for proc in module.procs:
            lines.append("")
            if lines[-1] != "":
                lines.append("")
            lines.append(self._serialize_proc(proc))

        return "\n".join(lines)

    def _serialize_import(self, imp):
        """Serialize import statement."""
        return f"import {imp.module_name};"

    def _serialize_type_alias(self, alias):
        """Serialize type alias."""
        return f"type {alias.alias_name} = {alias.target_type};"

    def _serialize_proc(self, proc):
        """Serialize proc definition."""
        lines = []

        # Proc header
        header = "pub proc" if proc.is_public else "proc"
        header += f" {proc.name}"

        if proc.type_params:
            params_str = ", ".join(f"{p.name}: {p.param_type}" for p in proc.type_params)
            header += f"<{params_str}>"

        header += " {"
        lines.append(header)

        self.indent_level += 1

        # Channel declarations
        for chan in proc.channels:
            chan_str = f"{self._indent()}{chan.name}: chan<{chan.chan_type}> {chan.direction};"
            lines.append(chan_str)

        if proc.channels:
            lines.append("")

        # Config function
        if proc.config:
            lines.append(self._serialize_config(proc.config))
            lines.append("")

        # Init function
        if proc.init:
            lines.append(self._serialize_init(proc.init))
            lines.append("")

        # Next function
        if proc.next_func:
            lines.append(self._serialize_next(proc.next_func))

        self.indent_level -= 1
        lines.append("}")

        return "\n".join(lines)

    def _serialize_config(self, config):
        """Serialize config function."""
        lines = []

        # Config header
        params_strs = []
        for name, chan_type, direction in config.params:
            params_strs.append(f"{name}: chan<{chan_type}> {direction}")

        # Split into multiple lines if too long
        if len(params_strs) <= 3:
            params_line = ", ".join(params_strs)
            lines.append(f"{self._indent()}config({params_line}) {{")
        else:
            lines.append(f"{self._indent()}config(")
            self.indent_level += 1
            for i, param_str in enumerate(params_strs):
                comma = "," if i < len(params_strs) - 1 else ""
                lines.append(f"{self._indent()}{param_str}{comma}")
            self.indent_level -= 1
            lines.append(f"{self._indent()}) {{")

        # Config body
        self.indent_level += 1
        body_str = self._serialize_expr(config.body)
        lines.append(f"{self._indent()}{body_str}")
        self.indent_level -= 1

        lines.append(f"{self._indent()}}}")

        return "\n".join(lines)

    def _serialize_init(self, init):
        """Serialize init function."""
        init_str = self._serialize_expr(init.init_expr)
        return f"{self._indent()}init {{ {init_str} }}"

    def _serialize_next(self, next_func):
        """Serialize next function."""
        lines = []

        lines.append(f"{self._indent()}next(state: {next_func.state_type}) {{")

        self.indent_level += 1
        if isinstance(next_func.body, DslxBlock):
            for stmt in next_func.body.stmts:
                stmt_str = self._serialize_stmt(stmt)
                if stmt_str:
                    lines.append(f"{self._indent()}{stmt_str}")
        else:
            # Body is a single expression
            body_str = self._serialize_expr(next_func.body)
            lines.append(f"{self._indent()}{body_str}")
        self.indent_level -= 1

        lines.append(f"{self._indent()}}}")

        return "\n".join(lines)

    def _serialize_expr(self, expr):
        """Serialize expression."""
        if isinstance(expr, DslxLiteral):
            if expr.lit_type:
                return f"{expr.lit_type}:{expr.value}"
            return str(expr.value)

        elif isinstance(expr, DslxVar):
            return expr.name

        elif isinstance(expr, DslxFuncCall):
            args_str = ", ".join(self._serialize_expr(arg) for arg in expr.args)
            return f"{expr.func_name}({args_str})"

        elif isinstance(expr, DslxBinOp):
            lhs = self._serialize_expr(expr.lhs)
            rhs = self._serialize_expr(expr.rhs)
            return f"{lhs} {expr.op} {rhs}"

        elif isinstance(expr, DslxTuple):
            elements_str = ", ".join(self._serialize_expr(e) for e in expr.elements)
            return f"({elements_str})"

        elif isinstance(expr, DslxArrayLiteral):
            # For nested arrays, serialize inner array literals without type annotation
            elements = []
            for e in expr.elements:
                if isinstance(e, DslxArrayLiteral):
                    # Nested array - serialize elements without type prefix
                    inner_elements = ", ".join(self._serialize_expr(ie) for ie in e.elements)
                    elements.append(f"[{inner_elements}]")
                else:
                    elements.append(self._serialize_expr(e))
            elements_str = ", ".join(elements)
            return f"{expr.elem_type}:[{elements_str}]"

        elif isinstance(expr, DslxChannelOp):
            args_str = ", ".join(self._serialize_expr(arg) for arg in expr.args)
            return f"{expr.op_type}({args_str})"

        elif isinstance(expr, DslxIf):
            cond = self._serialize_expr(expr.condition)
            then_expr = self._serialize_expr(expr.then_expr)
            else_expr = self._serialize_expr(expr.else_expr)
            return f"if {cond} {{\n{self._indent()}  {then_expr}\n{self._indent()}}} else {{\n{self._indent()}  {else_expr}\n{self._indent()}}}"

        else:
            return str(expr)

    def _serialize_stmt(self, stmt):
        """Serialize statement."""
        if isinstance(stmt, DslxLet):
            pattern = self._serialize_expr(stmt.pattern)
            expr = self._serialize_expr(stmt.expr)
            return f"let {pattern} = {expr};"

        elif isinstance(stmt, DslxChannelCreate):
            return f"let ({stmt.sender_name}, {stmt.receiver_name}) = chan<{stmt.chan_type}>(\"{stmt.label}\");"

        elif isinstance(stmt, DslxSpawn):
            type_params_str = ", ".join(self._serialize_expr(tp) for tp in stmt.type_params)
            args_str = ", ".join(self._serialize_expr(arg) for arg in stmt.args)
            return f"spawn {stmt.proc_name}<{type_params_str}>({args_str});"

        elif isinstance(stmt, DslxExpr):
            # Statement that's just an expression
            return self._serialize_expr(stmt)

        else:
            return str(stmt)
