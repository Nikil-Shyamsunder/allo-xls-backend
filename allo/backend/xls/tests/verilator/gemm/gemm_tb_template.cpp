#include "MODULE_HEADER"
#include "verilated.h"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    MODULE_CLASS* dut = new MODULE_CLASS;

    // Test matrices: A = [[1,2],[3,4]], B = [[5,6],[7,8]]
    uint32_t A[2][2] = {{1, 2}, {3, 4}};
    uint32_t B[2][2] = {{5, 6}, {7, 8}};
    uint32_t C_expected[2][2] = {{19, 22}, {43, 50}};
    uint32_t C_actual[2][2];

    // Set inputs - VlWide<4> is an array of 4 uint32_t elements
    dut->A[0] = A[0][0];
    dut->A[1] = A[0][1];
    dut->A[2] = A[1][0];
    dut->A[3] = A[1][1];

    dut->B[0] = B[0][0];
    dut->B[1] = B[0][1];
    dut->B[2] = B[1][0];
    dut->B[3] = B[1][1];

    // Run simulation and find pipeline latency
    dut->clk = 0;
    dut->rst = 1;
    dut->eval();
    
    dut->rst = 0;
    int pipeline_latency = -1;
    bool passed = false;
    
    for (int cycle = 0; cycle < 30; cycle++) {
        dut->clk = 1;
        dut->eval();
        dut->clk = 0;
        dut->eval();
        
        // Read outputs from VlWide array
        C_actual[0][0] = dut->out[0];
        C_actual[0][1] = dut->out[1];
        C_actual[1][0] = dut->out[2];
        C_actual[1][1] = dut->out[3];
        
        // Check if results match
        bool all_match = true;
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                if (C_actual[i][j] != C_expected[i][j]) {
                    all_match = false;
                }
            }
        }
        
        if (all_match && pipeline_latency == -1) {
            pipeline_latency = cycle;
            passed = true;
            break;
        }
    }

    if (passed) {
        printf("%d\n", pipeline_latency);
    } else {
        printf("-1\n");
    }

    delete dut;
    return passed ? 0 : 1;
}
