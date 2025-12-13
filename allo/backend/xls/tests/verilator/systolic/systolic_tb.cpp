#include "Vsystolic_2x2.h"
#include "verilated.h"
#include <stdio.h>

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vsystolic_2x2* dut = new Vsystolic_2x2;

    // Test matrices: A = [[1,2],[3,4]], B = [[5,6],[7,8]]
    uint32_t A[2][2] = {{1, 2}, {3, 4}};
    uint32_t B[2][2] = {{5, 6}, {7, 8}};
    uint32_t C_expected[2][2] = {{19, 22}, {43, 50}};
    uint32_t C_actual[2][2] = {{0, 0}, {0, 0}};

    // Pack input matrices into 128-bit signals
    dut->systolic___05Farg0_data[0] = A[0][0];
    dut->systolic___05Farg0_data[1] = A[0][1];
    dut->systolic___05Farg0_data[2] = A[1][0];
    dut->systolic___05Farg0_data[3] = A[1][1];

    dut->systolic___05Farg1_data[0] = B[0][0];
    dut->systolic___05Farg1_data[1] = B[0][1];
    dut->systolic___05Farg1_data[2] = B[1][0];
    dut->systolic___05Farg1_data[3] = B[1][1];

    // Initialize handshake signals
    dut->systolic___05Farg0_valid = 1;
    dut->systolic___05Farg1_valid = 1;
    dut->systolic___05Fout0_ready = 1;

    // Reset
    dut->clk = 0;
    dut->rst = 1;
    dut->eval();
    
    dut->clk = 1;
    dut->eval();
    dut->clk = 0;
    dut->eval();
    
    dut->rst = 0;

    // Run simulation to find when valid output appears
    int pipeline_latency = -1;
    bool passed = false;
    
    for (int cycle = 0; cycle < 100; cycle++) {
        dut->clk = 1;
        dut->eval();
        dut->clk = 0;
        dut->eval();
        
        // Check if output is valid
        if (dut->systolic___05Fout0_valid) {
            // Read output data
            C_actual[0][0] = dut->systolic___05Fout0_data[0];
            C_actual[0][1] = dut->systolic___05Fout0_data[1];
            C_actual[1][0] = dut->systolic___05Fout0_data[2];
            C_actual[1][1] = dut->systolic___05Fout0_data[3];
            
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
    }

    if (passed) {
        printf("%d\n", pipeline_latency);
    } else {
        printf("-1\n");
    }

    delete dut;
    return passed ? 0 : 1;
}
