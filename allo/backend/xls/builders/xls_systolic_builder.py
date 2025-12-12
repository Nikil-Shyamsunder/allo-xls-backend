"""XLS-compatible systolic array builder.

This builder generates DSLX code matching the XLS golden reference pattern,
using array channels and unroll_for! to avoid XLS codegen issues.
"""

from ..dslx_ast.proc_ast import *


class XLSSystolicArrayBuilder:
    """Builds XLS-compatible systolic array using array channels and unroll_for!"""

    def __init__(self, rows, cols, k_bound, elem_type="u32"):
        self.rows = rows
        self.cols = cols
        self.k_bound = k_bound
        self.elem_type = elem_type

    def build_pe_proc(self):
        """Build concrete PE proc (no type parameters).

        Matches the eric2x2.x pattern.
        """
        type_params = []

        channels = [
            DslxChannelDecl("result_out", self.elem_type, "out"),  # Result channel added
            DslxChannelDecl("from_west", self.elem_type, "in"),
            DslxChannelDecl("from_north", self.elem_type, "in"),
            DslxChannelDecl("to_east", self.elem_type, "out"),
            DslxChannelDecl("to_south", self.elem_type, "out"),
        ]

        # Config function
        config_params = [
            ("result_out", self.elem_type, "out"),  # Result channel added
            ("from_west", self.elem_type, "in"),
            ("from_north", self.elem_type, "in"),
            ("to_east", self.elem_type, "out"),
            ("to_south", self.elem_type, "out"),
        ]
        config_body = DslxTuple([
            DslxVar("result_out"),  # Result channel added
            DslxVar("from_west"),
            DslxVar("from_north"),
            DslxVar("to_east"),
            DslxVar("to_south"),
        ])
        config = DslxConfigFunc(config_params, config_body)

        # Init: (accum, k) = (0, 0)
        init = DslxInitFunc(
            DslxTuple([
                DslxLiteral(0, f"{self.elem_type}"),
                DslxLiteral(0, "u32")
            ])
        )

        # Next function - implements MAC
        next_stmts = []

        # let (accum, k) = state;
        next_stmts.append(DslxLet(
            DslxTuple([DslxVar("accum"), DslxVar("k")]),
            DslxVar("state")
        ))

        # let (tok, a) = recv(join(), from_west);
        next_stmts.append(DslxLet(
            DslxTuple([DslxVar("tok"), DslxVar("a")]),
            DslxChannelOp("recv", [
                DslxChannelOp("join", []),
                DslxVar("from_west")
            ])
        ))

        # let (tok, b) = recv(tok, from_north);
        next_stmts.append(DslxLet(
            DslxTuple([DslxVar("tok"), DslxVar("b")]),
            DslxChannelOp("recv", [
                DslxVar("tok"),
                DslxVar("from_north")
            ])
        ))

        # let prod = a * b;
        next_stmts.append(DslxLet(
            DslxVar("prod"),
            DslxBinOp("*", DslxVar("a"), DslxVar("b"))
        ))

        # let new_accum = accum + prod;
        next_stmts.append(DslxLet(
            DslxVar("new_accum"),
            DslxBinOp("+", DslxVar("accum"), DslxVar("prod"))
        ))

        # let tok = send(tok, to_east, a);
        next_stmts.append(DslxLet(
            DslxVar("tok"),
            DslxChannelOp("send", [
                DslxVar("tok"),
                DslxVar("to_east"),
                DslxVar("a")
            ])
        ))

        # let tok = send(tok, to_south, b);
        next_stmts.append(DslxLet(
            DslxVar("tok"),
            DslxChannelOp("send", [
                DslxVar("tok"),
                DslxVar("to_south"),
                DslxVar("b")
            ])
        ))

        # let new_k = k + u32:1;
        next_stmts.append(DslxLet(
            DslxVar("new_k"),
            DslxBinOp("+", DslxVar("k"), DslxLiteral(1, "u32"))
        ))

        # let should_output = new_k == K;
        next_stmts.append(DslxLet(
            DslxVar("should_output"),
            DslxBinOp("==", DslxVar("new_k"), DslxLiteral(self.k_bound, "u32"))
        ))

        # let tok = send_if(tok, result_out, should_output, new_accum);
        next_stmts.append(DslxLet(
            DslxVar("tok"),
            DslxChannelOp("send_if", [
                DslxVar("tok"),
                DslxVar("result_out"),
                DslxVar("should_output"),
                DslxVar("new_accum")
            ])
        ))

        # let new_state = if should_output { (u32:0, u32:0) } else { (new_accum, new_k) };
        next_stmts.append(DslxLet(
            DslxVar("new_state"),
            DslxIf(
                DslxVar("should_output"),
                DslxTuple([DslxLiteral(0, "u32"), DslxLiteral(0, "u32")]),
                DslxTuple([DslxVar("new_accum"), DslxVar("new_k")])
            )
        ))

        # Return new_state
        next_stmts.append(DslxVar("new_state"))

        next_func = DslxNextFunc(
            f"({self.elem_type}, u32)",
            DslxBlock(next_stmts)
        )

        return DslxProc(
            name="PE",
            type_params=type_params,
            channels=channels,
            config=config,
            init=init,
            next_func=next_func,
            is_public=False
        )

    def build_systolic_array_proc(self):
        """Build concrete SystolicArray proc matching eric2x2 architecture.

        Takes full matrices as input and uses a state machine for multi-cycle operation.
        """
        # No type parameters - concrete proc
        type_params = []

        # Matrix type definitions for cleaner code
        a_matrix_type = f"{self.elem_type}[{self.rows}][{self.k_bound}]"
        b_matrix_type = f"{self.elem_type}[{self.k_bound}][{self.cols}]"
        c_matrix_type = f"{self.elem_type}[{self.rows}][{self.cols}]"

        # Array channel declarations - matrix inputs/outputs like eric2x2
        channels = [
            # Input matrices
            DslxChannelDecl("arg0", a_matrix_type, "in", []),  # A matrix
            DslxChannelDecl("arg1", b_matrix_type, "in", []),  # B matrix
            # Output matrix
            DslxChannelDecl("out0", c_matrix_type, "out", []),  # C matrix
            # East-west channels: [ROWS][COLS+1]
            DslxChannelDecl("from_hor", self.elem_type, "in", [f"u32:{self.cols} + u32:1", f"u32:{self.rows}"]),
            DslxChannelDecl("to_hor", self.elem_type, "out", [f"u32:{self.cols} + u32:1", f"u32:{self.rows}"]),
            # North-south channels: [COLS][ROWS+1]
            DslxChannelDecl("from_vert", self.elem_type, "in", [f"u32:{self.rows}", f"u32:{self.cols} + u32:1"]),
            DslxChannelDecl("to_vert", self.elem_type, "out", [f"u32:{self.rows}", f"u32:{self.cols} + u32:1"]),
            # PE result channels: [ROWS][COLS]
            DslxChannelDecl("result_chans_in", self.elem_type, "in", [f"u32:{self.rows}", f"u32:{self.cols}"]),
        ]

        # Config function - matrix input/output types
        config_params = [
            ("arg0", a_matrix_type, "in", []),
            ("arg1", b_matrix_type, "in", []),
            ("out0", c_matrix_type, "out", []),
        ]

        config_stmts = []

        # Array channel creation with FIFO depth
        config_stmts.append(DslxChannelCreate(
            "to_hor", "from_hor", self.elem_type, "hor_chans",
            array_dims=[f"u32:{self.cols} + u32:1", f"u32:{self.rows}"],
            fifo_depth="u32:1"
        ))
        config_stmts.append(DslxChannelCreate(
            "to_vert", "from_vert", self.elem_type, "vert_chans",
            array_dims=[f"u32:{self.rows}", f"u32:{self.cols} + u32:1"],
            fifo_depth="u32:1"
        ))
        # Result channels: [ROWS][COLS]
        config_stmts.append(DslxChannelCreate(
            "result_chans_out", "result_chans_in", self.elem_type, "result_chans",
            array_dims=[f"u32:{self.rows}", f"u32:{self.cols}"],
            fifo_depth="u32:1"
        ))

        # Build unroll_for! spawn network
        # spawn PE(result_chans_out[row][col], from_hor[row][col], from_vert[row][col],
        #          to_hor[row][col+1], to_vert[row+1][col])
        spawn_stmt = DslxSpawn(
            "PE",
            [],  # No type arguments for concrete proc
            [
                DslxArrayIndex(DslxVar("result_chans_out"),
                              [DslxVar("row"), DslxVar("col")]),
                DslxArrayIndex(DslxVar("from_hor"),
                              [DslxVar("row"), DslxVar("col")]),
                DslxArrayIndex(DslxVar("from_vert"),
                              [DslxVar("row"), DslxVar("col")]),
                DslxArrayIndex(DslxVar("to_hor"),
                              [DslxVar("row"),
                               DslxBinOp("+", DslxVar("col"), DslxLiteral(1, "u32"))]),
                DslxArrayIndex(DslxVar("to_vert"),
                              [DslxBinOp("+", DslxVar("row"), DslxLiteral(1, "u32")),
                               DslxVar("col")]),
            ]
        )

        # Inner unroll_for! (col) - using concrete range
        inner_loop = DslxUnrollFor(
            [("col", "u32"), ("_", "()")],
            f"u32:0..u32:{self.cols}",
            [spawn_stmt],
            DslxTuple([])  # init: ()
        )

        # Outer unroll_for! (row) - using concrete range
        outer_loop = DslxUnrollFor(
            [("row", "u32"), ("_", "()")],
            f"u32:0..u32:{self.rows}",
            [inner_loop],
            DslxTuple([])  # init: ()
        )

        config_stmts.append(outer_loop)

        # Return tuple of all channels
        config_return = DslxTuple([
            DslxVar("arg0"),
            DslxVar("arg1"),
            DslxVar("out0"),
            DslxVar("from_hor"),
            DslxVar("to_hor"),
            DslxVar("from_vert"),
            DslxVar("to_vert"),
            DslxVar("result_chans_in"),
        ])

        config_stmts.append(config_return)
        config = DslxConfigFunc(config_params, DslxBlock(config_stmts))

        # Init: (zero_mat_a, zero_mat_b, index=0, busy=false)
        # Initialize with zero matrices using AST
        zero_mat_a = DslxArrayLiteral(
            self.elem_type,
            [DslxArrayLiteral(self.elem_type, [DslxLiteral(0, self.elem_type)] * self.k_bound) for _ in range(self.rows)]
        )
        zero_mat_b = DslxArrayLiteral(
            self.elem_type,
            [DslxArrayLiteral(self.elem_type, [DslxLiteral(0, self.elem_type)] * self.cols) for _ in range(self.k_bound)]
        )

        init = DslxInitFunc(
            DslxTuple([
                zero_mat_a,
                zero_mat_b,
                DslxLiteral(0, "u32"),
                DslxLiteral("false", None)
            ])
        )

        # Next function - state machine for multi-cycle operation
        # State: (a_mat, b_mat, index, busy)
        state_type = f"({a_matrix_type}, {b_matrix_type}, u32, bool)"

        next_stmts = []

        # 1. Unpack state: let (acc0, acc1, index0, busy) = state;
        next_stmts.append(DslxLet(
            DslxTuple([DslxVar("acc0"), DslxVar("acc1"), DslxVar("index0"), DslxVar("busy")]),
            DslxVar("state")
        ))

        # 2. Conditional matrix receive
        # let (tok0, a_mat2, b_mat2) = if index0 == u32:0 { recv matrices } else { use cached };
        # Then branch: receive both matrices
        then_recv_stmts = []
        then_recv_stmts.append(DslxLet(
            DslxTuple([DslxVar("a_tok"), DslxVar("a_recv")]),
            DslxChannelOp("recv", [DslxFuncCall("token", []), DslxVar("arg0")])
        ))
        then_recv_stmts.append(DslxLet(
            DslxTuple([DslxVar("b_tok"), DslxVar("b_recv")]),
            DslxChannelOp("recv", [DslxFuncCall("token", []), DslxVar("arg1")])
        ))
        then_recv_stmts.append(DslxLet(
            DslxVar("tok"),
            DslxChannelOp("join", [DslxVar("a_tok"), DslxVar("b_tok")])
        ))
        then_recv_stmts.append(DslxTuple([DslxVar("tok"), DslxVar("a_recv"), DslxVar("b_recv")]))

        # Else branch: use cached matrices
        else_recv = DslxTuple([
            DslxFuncCall("token", []),
            DslxVar("acc0"),
            DslxVar("acc1")
        ])

        # Combine into if expression - use Block for then branch
        next_stmts.append(DslxLet(
            DslxTuple([DslxVar("tok0"), DslxVar("a_mat2"), DslxVar("b_mat2")]),
            DslxIf(
                DslxBinOp("==", DslxVar("index0"), DslxLiteral(0, "u32")),
                DslxBlock(then_recv_stmts),
                else_recv
            )
        ))

        # 3. Feed A matrix rows to west side
        # Chain sends: tok0 -> tok_a1 -> tok_a2 -> ... -> tok1
        tok_var = "tok0"
        for row in range(self.rows):
            new_tok_var = f"tok_a{row}"
            next_stmts.append(DslxLet(
                DslxVar(new_tok_var),
                DslxIf(
                    DslxBinOp("<", DslxVar("index0"), DslxLiteral(self.k_bound, "u32")),
                    DslxChannelOp("send", [
                        DslxVar(tok_var),
                        DslxArrayIndex(DslxVar("to_hor"), [DslxLiteral(row, "u32"), DslxLiteral(0, "u32")]),
                        DslxArrayIndex(DslxVar("a_mat2"), [DslxLiteral(row, "u32"), DslxVar("index0")])
                    ]),
                    DslxVar(tok_var)
                )
            ))
            tok_var = new_tok_var

        # Rename final token to tok1
        next_stmts.append(DslxLet(DslxVar("tok1"), DslxVar(tok_var)))

        # 4. Feed B matrix columns to north side
        # Chain sends: tok0 -> tok_b1 -> tok_b2 -> ... -> tok2
        tok_var = "tok0"
        for col in range(self.cols):
            new_tok_var = f"tok_b{col}"
            next_stmts.append(DslxLet(
                DslxVar(new_tok_var),
                DslxIf(
                    DslxBinOp("<", DslxVar("index0"), DslxLiteral(self.k_bound, "u32")),
                    DslxChannelOp("send", [
                        DslxVar(tok_var),
                        DslxArrayIndex(DslxVar("to_vert"), [DslxLiteral(0, "u32"), DslxLiteral(col, "u32")]),
                        DslxArrayIndex(DslxVar("b_mat2"), [DslxVar("index0"), DslxLiteral(col, "u32")])
                    ]),
                    DslxVar(tok_var)
                )
            ))
            tok_var = new_tok_var

        # Rename final token to tok2
        next_stmts.append(DslxLet(DslxVar("tok2"), DslxVar(tok_var)))

        # 5. Drop edge values (using recv_non_blocking)
        # Drop from east edges
        for row in range(self.rows):
            next_stmts.append(DslxFuncCall(
                    "recv_non_blocking",
                    [
                        DslxFuncCall("token", []),
                        DslxArrayIndex(DslxVar("from_vert"), [DslxLiteral(self.rows, "u32"), DslxLiteral(col, "u32")]),
                        DslxLiteral(0, self.elem_type)
                    ]
                ))

        # Drop from south edges
        for col in range(self.cols):
            next_stmts.append(DslxFuncCall(
                    "recv_non_blocking",
                    [
                        DslxFuncCall("token", []),
                        DslxArrayIndex(DslxVar("from_vert"), [DslxLiteral(self.rows, "u32"), DslxLiteral(col, "u32")]),
                        DslxLiteral(0, self.elem_type)
                    ]
                ))

        # 6. Join feeding tokens
        next_stmts.append(DslxLet(
            DslxVar("tok3"),
            DslxChannelOp("join", [DslxVar("tok1"), DslxVar("tok2")])
        ))

        # 7. Conditional result collection and state update
        # Then branch (index0 == K): collect results and send output
        then_collect_stmts = []

        # Collect all PE results sequentially
        tok_var = "tok3"
        collected_results = []
        for row in range(self.rows):
            for col in range(self.cols):
                result_var = f"c{row}{col}"
                collected_results.append(result_var)
                new_tok_var = f"t{row}{col}"
                then_collect_stmts.append(DslxLet(
                    DslxTuple([DslxVar(new_tok_var), DslxVar(result_var)]),
                    DslxChannelOp("recv", [
                        DslxVar(tok_var),
                        DslxArrayIndex(DslxVar("result_chans_in"), [DslxLiteral(row, "u32"), DslxLiteral(col, "u32")])
                    ])
                ))
                tok_var = new_tok_var

        # Build result matrix literal
        result_rows = []
        idx = 0
        for row in range(self.rows):
            row_elements = []
            for col in range(self.cols):
                row_elements.append(DslxVar(collected_results[idx]))
                idx += 1
            result_rows.append(DslxArrayLiteral(self.elem_type, row_elements))

        # let c: c_matrix_type = [[c00, c01], [c10, c11]];
        then_collect_stmts.append(DslxLet(
            DslxVar("c"),
            DslxArrayLiteral(self.elem_type, result_rows)
        ))

        # Send result matrix
        then_collect_stmts.append(DslxLet(
            DslxVar("tok_send"),
            DslxChannelOp("send", [DslxVar(tok_var), DslxVar("out0"), DslxVar("c")])
        ))

        # Return reset state
        zero_mat_a = DslxArrayLiteral(
            self.elem_type,
            [DslxArrayLiteral(self.elem_type, [DslxLiteral(0, self.elem_type)] * self.k_bound) for _ in range(self.rows)]
        )
        zero_mat_b = DslxArrayLiteral(
            self.elem_type,
            [DslxArrayLiteral(self.elem_type, [DslxLiteral(0, self.elem_type)] * self.cols) for _ in range(self.k_bound)]
        )
        then_collect_stmts.append(DslxTuple([
            zero_mat_a,
            zero_mat_b,
            DslxLiteral(0, "u32"),
            DslxLiteral("false", None)
        ]))

        # Else branch: increment index and keep matrices
        else_collect = DslxTuple([
            DslxVar("a_mat2"),
            DslxVar("b_mat2"),
            DslxBinOp("+", DslxVar("index0"), DslxLiteral(1, "u32")),
            DslxLiteral("true", None)
        ])

        # Final if for result collection
        next_stmts.append(DslxIf(
            DslxBinOp("==", DslxVar("index0"), DslxLiteral(self.k_bound, "u32")),
            DslxBlock(then_collect_stmts),
            else_collect
        ))

        next_func = DslxNextFunc(state_type, DslxBlock(next_stmts))

        return DslxProc(
            name="SystolicArray",
            type_params=type_params,
            channels=channels,
            config=config,
            init=init,
            next_func=next_func,
            is_public=True
        )

    def build_module(self):
        """Build complete DSLX module with PE and SystolicArray procs."""
        # Build procs
        pe_proc = self.build_pe_proc()
        systolic_proc = self.build_systolic_array_proc()

        # Make the parametric SystolicArray public instead of wrapper
        systolic_proc.is_public = True

        # Create module (no wrapper needed)
        module = DslxModule(
            imports=[],
            type_aliases=[],
            procs=[pe_proc, systolic_proc]  # No wrapper
        )

        return module
