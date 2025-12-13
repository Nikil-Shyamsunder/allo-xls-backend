"""Test AST-based proc generation."""

from allo.backend.xls.builders import PEProcBuilder, ProcModuleBuilder
from allo.backend.xls.dslx_ast import DslxProcSerializer


def test_generic_pe_proc():
    """Test generating a generic PE proc using AST builders."""

    # Build a MAC PE proc using AST
    builder = PEProcBuilder(elem_type="F32", k_param=True)
    pe_proc = builder.build_mac_proc(name="PE")

    # Build complete module
    module = (ProcModuleBuilder()
              .add_import("float32")
              .add_type_alias("F32", "float32::F32")
              .add_proc(pe_proc)
              .build())

    # Serialize to DSLX text
    serializer = DslxProcSerializer()
    dslx_code = serializer.serialize(module)

    print("=" * 80)
    print("Generated DSLX using AST-based approach:")
    print("=" * 80)
    print(dslx_code)
    print("=" * 80)

    # Save to file
    output_path = "/home/nvs26/allo-xls-backend/allo/backend/xls/pe_ast_generated.x"
    with open(output_path, 'w') as f:
        f.write(dslx_code)

    print(f"\nSaved to: {output_path}")


def test_custom_proc():
    """Test creating a custom proc with different configuration."""

    # Build a different kind of PE with custom channels
    builder = PEProcBuilder(elem_type="u32", k_param=False)

    # Custom channels - simpler adder PE
    input_channels = [("x_in", "u32", "in"), ("y_in", "u32", "in")]
    output_channels = [("sum_out", "u32", "out")]

    pe_proc = builder.build_mac_proc(
        name="Adder",
        input_channels=input_channels,
        output_channels=output_channels,
        computation={'type': 'ADD'}
    )

    # Serialize
    serializer = DslxProcSerializer()
    dslx_code = serializer.serialize(pe_proc)

    print("\n" + "=" * 80)
    print("Custom Adder Proc:")
    print("=" * 80)
    print(dslx_code)
    print("=" * 80)


if __name__ == "__main__":
    test_generic_pe_proc()
    test_custom_proc()
