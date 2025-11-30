"""Generic proc builders using AST representation.

These builders create DSLX proc AST nodes that can be serialized to text.
This approach is more flexible and composable than string-based generation.
"""

from ..dslx_ast.proc_ast import *


class PEProcBuilder:
    """Builder for generic PE (Processing Element) procs.

    This is a generic builder that's not tied to systolic arrays.
    It can build any MAC-style processing element.
    """

    def __init__(self, elem_type="u32", k_param=True):
        self.elem_type = elem_type
        self.k_param = k_param

    def build_mac_proc(self, name="PE", input_channels=None, output_channels=None,
                       state_vars=None, computation=None):
        """Build a generic MAC proc.

        Args:
            name: Proc name
            input_channels: List of (name, type, direction) for input channels
            output_channels: List of (name, type, direction) for output channels
            state_vars: List of (name, type, init_value) for state variables
            computation: Dict describing computation {'type': 'MAC', ...}

        Returns:
            DslxProc AST node
        """
        # Default channels for a standard PE
        if input_channels is None:
            input_channels = [
                ("a_in", self.elem_type, "in"),
                ("b_in", self.elem_type, "in"),
            ]

        if output_channels is None:
            output_channels = [
                ("a_out", self.elem_type, "out"),
                ("b_out", self.elem_type, "out"),
                ("c_out", self.elem_type, "out"),
            ]

        all_channels = input_channels + output_channels

        # Build channel declarations
        channels = [DslxChannelDecl(name, ctype, direction)
                    for name, ctype, direction in all_channels]

        # Type parameters
        type_params = [DslxParam("K", "u32")] if self.k_param else []

        # Build config function
        config_params = [(name, ctype, direction) for name, ctype, direction in all_channels]
        config_body = DslxTuple([DslxVar(name) for name, _, _ in all_channels])
        config = DslxConfigFunc(config_params, config_body)

        # Build init function
        if state_vars is None:
            # Default: (accumulator, counter)
            init_expr = DslxTuple([
                self._zero_value(),
                DslxLiteral(0, "u32")
            ])
        else:
            init_expr = DslxTuple([init_val for _, _, init_val in state_vars])

        init = DslxInitFunc(init_expr)

        # Build next function
        state_type = f"({self.elem_type}, u32)"
        next_body = self._build_next_body(computation or {'type': 'MAC'})
        next_func = DslxNextFunc(state_type, next_body)

        # Create proc
        return DslxProc(
            name=name,
            type_params=type_params,
            channels=channels,
            config=config,
            init=init,
            next_func=next_func
        )

    def _build_next_body(self, computation):
        """Build the next function body for a MAC computation."""
        stmts = []

        # Destructure state
        stmts.append(DslxLet(
            DslxTuple([DslxVar("accum"), DslxVar("k")]),
            DslxVar("state")
        ))

        # Receive inputs
        stmts.append(DslxLet(
            DslxTuple([DslxVar("tok"), DslxVar("a")]),
            DslxChannelOp("recv", [DslxFuncCall("join", []), DslxVar("a_in")])
        ))

        stmts.append(DslxLet(
            DslxTuple([DslxVar("tok"), DslxVar("b")]),
            DslxChannelOp("recv", [DslxVar("tok"), DslxVar("b_in")])
        ))

        # Computation
        comp_type = computation.get('type', 'MAC')
        if comp_type == 'MAC':
            if self.elem_type == 'F32':
                stmts.append(DslxLet(
                    DslxVar("prod"),
                    DslxFuncCall("float32::mul", [DslxVar("a"), DslxVar("b")])
                ))
                stmts.append(DslxLet(
                    DslxVar("new_accum"),
                    DslxFuncCall("float32::add", [DslxVar("accum"), DslxVar("prod")])
                ))
            else:
                stmts.append(DslxLet(
                    DslxVar("prod"),
                    DslxBinOp("*", DslxVar("a"), DslxVar("b"))
                ))
                stmts.append(DslxLet(
                    DslxVar("new_accum"),
                    DslxBinOp("+", DslxVar("accum"), DslxVar("prod"))
                ))

        # Pass-through outputs
        stmts.append(DslxLet(
            DslxVar("tok"),
            DslxChannelOp("send", [DslxVar("tok"), DslxVar("a_out"), DslxVar("a")])
        ))

        stmts.append(DslxLet(
            DslxVar("tok"),
            DslxChannelOp("send", [DslxVar("tok"), DslxVar("b_out"), DslxVar("b")])
        ))

        # Counter increment
        stmts.append(DslxLet(
            DslxVar("new_k"),
            DslxBinOp("+", DslxVar("k"), DslxLiteral(1, "u32"))
        ))

        # Conditional output on K completion
        send_c = DslxChannelOp("send", [DslxVar("tok"), DslxVar("c_out"), DslxVar("new_accum")])
        no_send = DslxVar("tok")

        stmts.append(DslxLet(
            DslxVar("tok"),
            DslxIf(
                DslxBinOp("==", DslxVar("new_k"), DslxVar("K")),
                send_c,
                no_send
            )
        ))

        # State update with reset
        reset_state = DslxTuple([self._zero_value(), DslxLiteral(0, "u32")])
        continue_state = DslxTuple([DslxVar("new_accum"), DslxVar("new_k")])

        stmts.append(DslxLet(
            DslxVar("new_state"),
            DslxIf(
                DslxBinOp("==", DslxVar("new_k"), DslxVar("K")),
                reset_state,
                continue_state
            )
        ))

        # Return new state
        stmts.append(DslxVar("new_state"))

        return DslxBlock(stmts)

    def _zero_value(self):
        """Get zero value for element type."""
        if self.elem_type == 'F32':
            return DslxFuncCall("float32::zero", [DslxLiteral(0, "u1")])
        else:
            return DslxLiteral(0, self.elem_type)


class ProcModuleBuilder:
    """Builder for complete proc modules with imports and multiple procs."""

    def __init__(self):
        self.imports = []
        self.type_aliases = []
        self.procs = []

    def add_import(self, module_name):
        """Add an import statement."""
        self.imports.append(DslxImport(module_name))
        return self

    def add_type_alias(self, alias_name, target_type):
        """Add a type alias."""
        self.type_aliases.append(DslxTypeAlias(alias_name, target_type))
        return self

    def add_proc(self, proc):
        """Add a proc to the module."""
        self.procs.append(proc)
        return self

    def build(self):
        """Build the complete module."""
        return DslxModule(
            imports=self.imports,
            type_aliases=self.type_aliases,
            procs=self.procs
        )


class GridChannelNetworkBuilder:
    """Builder for grid-based channel networks (systolic arrays).
    
    Simplified for 2D grid topologies with horizontal/vertical channels.
    """

    def __init__(self, rows, cols, elem_type="u32"):
        self.rows = rows
        self.cols = cols
        self.elem_type = elem_type
        self.channels = []

    def add_horizontal_channels(self, prefix="a_fifo"):
        """Add horizontal channels (one per row, cols+1 stages)."""
        for i in range(self.rows):
            for j in range(self.cols + 1):
                label = f"{prefix}_{i}_{j}"
                self.channels.append(
                    DslxChannelCreate(f"{label}_s", f"{label}_r", self.elem_type, label)
                )
        return self

    def add_vertical_channels(self, prefix="b_fifo"):
        """Add vertical channels (one per col, rows+1 stages)."""
        for j in range(self.cols):
            for i in range(self.rows + 1):
                label = f"{prefix}_{j}_{i}"
                self.channels.append(
                    DslxChannelCreate(f"{label}_s", f"{label}_r", self.elem_type, label)
                )
        return self

    def add_output_channels(self, prefix="c_out"):
        """Add output channels (one per PE)."""
        for i in range(self.rows):
            for j in range(self.cols):
                label = f"{prefix}_{i}_{j}"
                self.channels.append(
                    DslxChannelCreate(f"{label}_s", f"{label}_r", self.elem_type, label)
                )
        return self

    def build(self):
        """Return list of channel creation statements."""
        return self.channels


class GridSpawnBuilder:
    """Builder for grid-based PE spawn networks (systolic arrays)."""

    def __init__(self, rows, cols, k_bound, proc_name="PE"):
        self.rows = rows
        self.cols = cols
        self.k_bound = k_bound
        self.proc_name = proc_name
        self.spawns = []

    def add_grid_spawns(self, channel_pattern="systolic"):
        """Add spawns for each PE in the grid.
        
        Args:
            channel_pattern: "systolic" for standard systolic array wiring
        """
        for i in range(self.rows):
            for j in range(self.cols):
                if channel_pattern == "systolic":
                    channels = [
                        f"a_fifo_{i}_{j}_r",      # A input
                        f"b_fifo_{j}_{i}_r",      # B input  
                        f"a_fifo_{i}_{j+1}_s",    # A output
                        f"b_fifo_{j}_{i+1}_s",    # B output
                        f"c_out_{i}_{j}_s"        # C output
                    ]
                else:
                    raise ValueError(f"Unknown pattern: {channel_pattern}")
                
                type_params = [DslxLiteral(self.k_bound, "u32")]
                channel_args = [DslxVar(ch) for ch in channels]
                
                self.spawns.append(
                    DslxSpawn(self.proc_name, type_params, channel_args)
                )
        
        return self

    def build(self):
        """Return list of spawn statements."""
        return self.spawns


class SystolicArrayBuilder:
    """Complete builder for systolic array procs using AST.

    Combines PE, channel network, and top-level proc generation.
    """

    def __init__(self, rows, cols, k_bound, elem_type="F32", m_dim=None, n_dim=None):
        self.rows = rows
        self.cols = cols
        self.k_bound = k_bound
        self.elem_type = elem_type
        # Matrix output dimensions (M, N) - default to PE grid dimensions if not specified
        self.m_dim = m_dim if m_dim is not None else rows
        self.n_dim = n_dim if n_dim is not None else cols

    def build_complete_module(self):
        """Build complete systolic array module with PE and top-level proc."""

        # Build PE proc
        pe_builder = PEProcBuilder(elem_type=self.elem_type, k_param=True)
        pe_proc = pe_builder.build_mac_proc(name="PE")

        # Build channel network for M×N PEs (the actual computation grid)
        # Note: rows×cols is the PE grid size from MLIR, but M×N is the actual output size
        chan_builder = GridChannelNetworkBuilder(self.m_dim, self.n_dim, self.elem_type)
        chan_builder.add_horizontal_channels("a_fifo")
        chan_builder.add_vertical_channels("b_fifo")
        chan_builder.add_output_channels("c_out")
        channels = chan_builder.build()

        # Build spawn network for M×N PEs
        spawn_builder = GridSpawnBuilder(self.m_dim, self.n_dim, self.k_bound, "PE")
        spawn_builder.add_grid_spawns("systolic")
        spawns = spawn_builder.build()

        # Build top-level proc
        top_proc = self._build_top_level(channels, spawns)

        # Build complete module
        module_builder = ProcModuleBuilder()
        
        if self.elem_type == "F32":
            module_builder.add_import("float32")
            module_builder.add_type_alias("F32", "float32::F32")
        
        module_builder.add_proc(pe_proc)
        module_builder.add_proc(top_proc)
        
        return module_builder.build()

    def _build_top_level(self, internal_channels, spawns):
        """Build top-level SystolicArray proc with complete data feeding logic."""

        # Create input/output channel declarations
        input_chans = []
        output_chans = []

        # Add row input channels (M rows for matrix A)
        for i in range(self.m_dim):
            input_chans.append(DslxChannelDecl(f"a_row_{i}", self.elem_type, "in"))

        # Add column input channels (N columns for matrix B)
        for j in range(self.n_dim):
            input_chans.append(DslxChannelDecl(f"b_col_{j}", self.elem_type, "in"))

        # Add result output channel (M×N result matrix C)
        # DSLX arrays use [INNER][OUTER] convention, so [n_dim][m_dim] for row-major indexing
        result_type = f"{self.elem_type}[{self.n_dim}][{self.m_dim}]"
        output_chans.append(DslxChannelDecl("c_result", result_type, "out"))

        external_channels = input_chans + output_chans

        # Create internal channel declarations from channel creation statements
        internal_chan_decls = []
        internal_chan_names = []
        for chan_create in internal_channels:
            # Add declarations for sender and receiver ends
            internal_chan_decls.append(DslxChannelDecl(chan_create.sender_name, chan_create.chan_type, "out"))
            internal_chan_decls.append(DslxChannelDecl(chan_create.receiver_name, chan_create.chan_type, "in"))
            internal_chan_names.extend([chan_create.sender_name, chan_create.receiver_name])

        all_channels = external_channels + internal_chan_decls

        # Build config with channel creation and spawns
        config_params = [(ch.name, ch.chan_type, ch.direction) for ch in external_channels]
        config_stmts = internal_channels + spawns
        # Return tuple of external channels + internal channels
        return_vars = [DslxVar(ch.name) for ch in external_channels] + [DslxVar(name) for name in internal_chan_names]
        config_stmts.append(DslxTuple(return_vars))
        config_body = DslxBlock(config_stmts)
        config = DslxConfigFunc(config_params, config_body)

        # Build init
        init = DslxInitFunc(DslxTuple([]))

        # Build next function with only data feeding logic
        next_stmts = self._build_data_feeding_logic()
        next_func = DslxNextFunc("()", DslxBlock(next_stmts))

        return DslxProc(
            name="SystolicArray",
            channels=all_channels,
            config=config,
            init=init,
            next_func=next_func,
            is_public=True
        )

    def _build_data_feeding_logic(self):
        """Build the data feeding and collection logic for the next function."""
        stmts = []

        # Initialize token
        stmts.append(DslxLet(DslxVar("tok"), DslxFuncCall("join", [])))

        # Feed A matrix rows (M rows, K elements each)
        for i in range(self.m_dim):
            for k in range(self.k_bound):
                # Receive from input
                stmts.append(DslxLet(
                    DslxTuple([DslxVar("tok"), DslxVar(f"a_{i}_{k}")]),
                    DslxChannelOp("recv", [DslxVar("tok"), DslxVar(f"a_row_{i}")])
                ))
                # Send to grid
                stmts.append(DslxLet(
                    DslxVar("tok"),
                    DslxChannelOp("send", [DslxVar("tok"), DslxVar(f"a_fifo_{i}_0_s"), DslxVar(f"a_{i}_{k}")])
                ))

        # Feed B matrix columns (N columns, K elements each)
        for j in range(self.n_dim):
            for k in range(self.k_bound):
                # Receive from input
                stmts.append(DslxLet(
                    DslxTuple([DslxVar("tok"), DslxVar(f"b_{k}_{j}")]),
                    DslxChannelOp("recv", [DslxVar("tok"), DslxVar(f"b_col_{j}")])
                ))
                # Send to grid
                stmts.append(DslxLet(
                    DslxVar("tok"),
                    DslxChannelOp("send", [DslxVar("tok"), DslxVar(f"b_fifo_{j}_0_s"), DslxVar(f"b_{k}_{j}")])
                ))

        # Collect results from PEs (M×N result matrix)
        for i in range(self.m_dim):
            for j in range(self.n_dim):
                stmts.append(DslxLet(
                    DslxTuple([DslxVar("tok"), DslxVar(f"c_{i}_{j}")]),
                    DslxChannelOp("recv", [DslxVar("tok"), DslxVar(f"c_out_{i}_{j}_r")])
                ))

        # Drain A_fifo right edge (M×N grid)
        for i in range(self.m_dim):
            for k in range(self.k_bound):
                stmts.append(DslxLet(
                    DslxTuple([DslxVar("tok"), DslxVar("_")]),
                    DslxChannelOp("recv", [DslxVar("tok"), DslxVar(f"a_fifo_{i}_{self.n_dim}_r")])
                ))

        # Drain B_fifo bottom edge (M×N grid)
        for j in range(self.n_dim):
            for k in range(self.k_bound):
                stmts.append(DslxLet(
                    DslxTuple([DslxVar("tok"), DslxVar("_")]),
                    DslxChannelOp("recv", [DslxVar("tok"), DslxVar(f"b_fifo_{j}_{self.m_dim}_r")])
                ))

        # Build result matrix (M×N dimensions)
        # DSLX arrays use [INNER][OUTER] convention, so [n_dim][m_dim] for row-major indexing
        result_rows = []
        for i in range(self.m_dim):
            row_elements = [DslxVar(f"c_{i}_{j}") for j in range(self.n_dim)]
            result_rows.append(DslxArrayLiteral(f"{self.elem_type}[{self.n_dim}]", row_elements))

        stmts.append(DslxLet(
            DslxVar("C"),
            DslxArrayLiteral(f"{self.elem_type}[{self.n_dim}][{self.m_dim}]", result_rows)
        ))

        # Send result
        stmts.append(DslxLet(
            DslxVar("tok"),
            DslxChannelOp("send", [DslxVar("tok"), DslxVar("c_result"), DslxVar("C")])
        ))

        # Return unit is implicit after statements - no need to add ()
        return stmts
