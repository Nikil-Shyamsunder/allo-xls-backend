// Generic Systolic Array Testbench
// Compile with: -DROWS=N -DCOLS=N -DK_BOUND=K -DELEM_TYPE=type
// Example: -DROWS=2 -DCOLS=2 -DK_BOUND=2 -DELEM_TYPE=int32_t

#include "Vsystolic.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#ifndef ROWS
#define ROWS 2
#endif

#ifndef COLS
#define COLS 2
#endif

#ifndef K_BOUND
#define K_BOUND 2
#endif

#ifndef ELEM_TYPE
#define ELEM_TYPE int32_t
#endif

#ifndef TYPE_SIZE
#define TYPE_SIZE 32
#endif

// Compute expected result: C = A * B
void compute_expected(const ELEM_TYPE A[ROWS][K_BOUND], 
                     const ELEM_TYPE B[K_BOUND][COLS],
                     ELEM_TYPE C[ROWS][COLS]) {
    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            ELEM_TYPE sum = 0;
            for (int k = 0; k < K_BOUND; k++) {
                sum += A[i][k] * B[k][j];
            }
            C[i][j] = sum;
        }
    }
}

// Pack matrix into flat array for Verilog input
void pack_matrix(const ELEM_TYPE* matrix, int rows, int cols, uint32_t* packed) {
    for (int i = 0; i < rows * cols; i++) {
        packed[i] = (uint32_t)matrix[i];
    }
}

// Unpack flat array from Verilog output into matrix
void unpack_matrix(const uint32_t* packed, int rows, int cols, ELEM_TYPE* matrix) {
    for (int i = 0; i < rows * cols; i++) {
        matrix[i] = (ELEM_TYPE)packed[i];
    }
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vsystolic* dut = new Vsystolic;
    
    // Enable VCD tracing
    Verilated::traceEverOn(true);
    VerilatedVcdC* tfp = new VerilatedVcdC;
    dut->trace(tfp, 99);
    tfp->open("systolic.vcd");

    // Test matrices
    ELEM_TYPE A[ROWS][K_BOUND];
    ELEM_TYPE B[K_BOUND][COLS];
    ELEM_TYPE C_expected[ROWS][COLS];
    ELEM_TYPE C_actual[ROWS][COLS];

    // Initialize test data - simple incrementing values
    int val = 1;
    for (int i = 0; i < ROWS; i++) {
        for (int k = 0; k < K_BOUND; k++) {
            A[i][k] = val++;
        }
    }
    for (int k = 0; k < K_BOUND; k++) {
        for (int j = 0; j < COLS; j++) {
            B[k][j] = val++;
        }
    }

    // Compute expected result
    compute_expected(A, B, C_expected);

    // Pack matrices for Verilog
    uint32_t A_packed[ROWS * K_BOUND];
    uint32_t B_packed[K_BOUND * COLS];
    pack_matrix(&A[0][0], ROWS, K_BOUND, A_packed);
    pack_matrix(&B[0][0], K_BOUND, COLS, B_packed);

    // Set input data
    for (int i = 0; i < ROWS * K_BOUND; i++) {
        dut->systolic___05Farg0[i] = A_packed[i];
    }
    for (int i = 0; i < K_BOUND * COLS; i++) {
        dut->systolic___05Farg1[i] = B_packed[i];
    }

    // Initialize handshake signals
    dut->systolic___05Farg0_vld = 1;
    dut->systolic___05Farg1_vld = 1;
    dut->systolic___05Fout0_rdy = 1;

    // Reset
    dut->clk = 0;
    dut->rst = 1;
    dut->eval();
    
    dut->clk = 1;
    dut->eval();
    dut->clk = 0;
    dut->eval();
    
    dut->rst = 0;

    // Run simulation - increase cycle limit for larger designs
    int max_cycles = 200 + (ROWS * COLS * K_BOUND * 20);  // Increased multiplier for larger designs
    int pipeline_latency = -1;
    bool passed = false;
    bool debug = (ROWS > 3 || COLS > 3);  // Enable debug for larger designs
    bool inputs_accepted = false;
    
    if (debug) {
        printf("Debug mode enabled - max_cycles=%d\n", max_cycles);
    }
    
    for (int cycle = 0; cycle < max_cycles; cycle++) {
        dut->clk = 1;
        dut->eval();
        tfp->dump(cycle * 2);
        dut->clk = 0;
        dut->eval();
        tfp->dump(cycle * 2 + 1);
        
        // Drop valid signals after inputs are accepted (ready goes low)
        if (!inputs_accepted && !dut->systolic___05Farg0_rdy && !dut->systolic___05Farg1_rdy) {
            dut->systolic___05Farg0_vld = 0;
            dut->systolic___05Farg1_vld = 0;
            inputs_accepted = true;
            if (debug) printf("Inputs accepted at cycle %d\n", cycle);
        }
        
        if (debug && cycle < 50) {
            printf("Cycle %d: arg0_rdy=%d arg1_rdy=%d out_vld=%d\n", 
                   cycle, dut->systolic___05Farg0_rdy, dut->systolic___05Farg1_rdy, dut->systolic___05Fout0_vld);
        }
        
        // Check if output is valid
        if (dut->systolic___05Fout0_vld) {
            // Unpack output
            uint32_t C_packed[ROWS * COLS];
            for (int i = 0; i < ROWS * COLS; i++) {
                C_packed[i] = dut->systolic___05Fout0[i];
            }
            unpack_matrix(C_packed, ROWS, COLS, &C_actual[0][0]);
            
            // Check if results match
            bool all_match = true;
            for (int i = 0; i < ROWS; i++) {
                for (int j = 0; j < COLS; j++) {
                    if (C_actual[i][j] != C_expected[i][j]) {
                        all_match = false;
                        printf("Mismatch at C[%d][%d]: expected %d, got %d\n", 
                               i, j, (int)C_expected[i][j], (int)C_actual[i][j]);
                    }
                }
            }
            
            if (all_match && pipeline_latency == -1) {
                pipeline_latency = cycle;
                passed = true;
                
                printf("✓ Test PASSED at cycle %d\n", pipeline_latency);
                printf("  Configuration: %dx%d matrix multiply, K=%d\n", ROWS, COLS, K_BOUND);
                printf("  Input A (%dx%d):\n", ROWS, K_BOUND);
                for (int i = 0; i < ROWS; i++) {
                    printf("    [");
                    for (int k = 0; k < K_BOUND; k++) {
                        printf("%4d", (int)A[i][k]);
                    }
                    printf(" ]\n");
                }
                printf("  Input B (%dx%d):\n", K_BOUND, COLS);
                for (int k = 0; k < K_BOUND; k++) {
                    printf("    [");
                    for (int j = 0; j < COLS; j++) {
                        printf("%4d", (int)B[k][j]);
                    }
                    printf(" ]\n");
                }
                printf("  Output C (%dx%d):\n", ROWS, COLS);
                for (int i = 0; i < ROWS; i++) {
                    printf("    [");
                    for (int j = 0; j < COLS; j++) {
                        printf("%4d", (int)C_actual[i][j]);
                    }
                    printf(" ]\n");
                }
                break;
            } else if (!all_match) {
                printf("✗ Test FAILED - incorrect results\n");
                break;
            }
        }
    }

    if (!passed && pipeline_latency == -1) {
        printf("✗ Test FAILED - no valid output after %d cycles\n", max_cycles);
    }

    tfp->close();
    delete dut;
    return passed ? 0 : 1;
}
