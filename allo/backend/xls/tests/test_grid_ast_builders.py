"""Test grid-based AST builders for systolic arrays."""

from allo.backend.xls.builders import (
    SystolicArrayBuilder,
    GridChannelNetworkBuilder,
    GridSpawnBuilder
)
from allo.backend.xls.dslx_ast import DslxProcSerializer


def test_grid_channel_network():
    """Test building a grid channel network."""
    print("=" * 80)
    print("Testing Grid Channel Network Builder")
    print("=" * 80)
    
    builder = GridChannelNetworkBuilder(rows=2, cols=4, elem_type="F32")
    builder.add_horizontal_channels("a_fifo")
    builder.add_vertical_channels("b_fifo")
    builder.add_output_channels("c_out")
    
    channels = builder.build()
    
    print(f"Generated {len(channels)} channel creation statements")
    print(f"  - Horizontal (a_fifo): {2 * 5} expected")
    print(f"  - Vertical (b_fifo): {4 * 3} expected")
    print(f"  - Output (c_out): {2 * 4} expected")
    print(f"  - Total: {2*5 + 4*3 + 2*4} expected")
    
    # Serialize a few examples
    serializer = DslxProcSerializer()
    print("\nExample channel declarations:")
    for i, chan in enumerate(channels[:3]):
        print(f"  {serializer._serialize_stmt(chan)}")
    print(f"  ... ({len(channels) - 3} more)")


def test_grid_spawn_network():
    """Test building a grid spawn network."""
    print("\n" + "=" * 80)
    print("Testing Grid Spawn Network Builder")
    print("=" * 80)
    
    builder = GridSpawnBuilder(rows=2, cols=4, k_bound=4, proc_name="PE")
    builder.add_grid_spawns("systolic")
    
    spawns = builder.build()
    
    print(f"Generated {len(spawns)} spawn statements for 2x4 grid")
    
    # Serialize examples
    serializer = DslxProcSerializer()
    print("\nExample spawn statements:")
    for i, spawn in enumerate(spawns[:2]):
        print(f"  {serializer._serialize_stmt(spawn)}")
    print(f"  ... ({len(spawns) - 2} more)")


def test_complete_systolic_array():
    """Test building a complete systolic array module."""
    print("\n" + "=" * 80)
    print("Testing Complete Systolic Array Builder")
    print("=" * 80)
    
    # Build a 2x4 systolic array with K=4
    builder = SystolicArrayBuilder(rows=2, cols=4, k_bound=4, elem_type="F32")
    module = builder.build_complete_module()
    
    print(f"Built module with:")
    print(f"  - {len(module.imports)} imports")
    print(f"  - {len(module.type_aliases)} type aliases")
    print(f"  - {len(module.procs)} procs")
    
    # Serialize
    serializer = DslxProcSerializer()
    dslx_code = serializer.serialize(module)
    
    # Save
    output_path = "/home/nvs26/allo-xls-backend/allo/backend/xls/systolic_ast_generated.x"
    with open(output_path, 'w') as f:
        f.write(dslx_code)
    
    print(f"\nSaved complete module to: {output_path}")
    print(f"Total lines: {len(dslx_code.splitlines())}")
    
    # Show structure
    print("\nModule structure:")
    print(dslx_code[:500] + "\n... (truncated)")


if __name__ == "__main__":
    test_grid_channel_network()
    test_grid_spawn_network()
    test_complete_systolic_array()
    
    print("\n" + "=" * 80)
    print("All tests completed!")
    print("=" * 80)
