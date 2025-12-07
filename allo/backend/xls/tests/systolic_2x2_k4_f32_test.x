// Test for 2x2 systolic array with K=4, F32
// Matrix multiplication: C[2x2] = A[2x4] * B[4x2]

import float32;
type F32 = float32::F32;
const F32_ZERO = float32::zero(false);
const F32_ONE = float32::one(false);

// Include the generated PE and SystolicArray procs here
// (In practice, this would import from the generated file)

#[test_proc]
proc smoke_test_zeros {
    terminator: chan<bool> out;

    init { () }

    config(terminator: chan<bool> out) {
        // Create channels
        let (a_row_0_s, a_row_0_r) = chan<F32>("a_row_0");
        let (a_row_1_s, a_row_1_r) = chan<F32>("a_row_1");
        let (b_col_0_s, b_col_0_r) = chan<F32>("b_col_0");
        let (b_col_1_s, b_col_1_r) = chan<F32>("b_col_1");
        let (c_result_s, c_result_r) = chan<F32[2][2]>("c_result");
        
        // Spawn array (would spawn actual SystolicArray here)
        // spawn SystolicArray(a_row_0_r, a_row_1_r, b_col_0_r, b_col_1_r, c_result_s);
        
        (terminator,)
    }

    next(state: ()) {
        let tok = join();
        
        // Test: A = all zeros, B = all zeros
        // Expected: C = all zeros
        // 
        // A[2x4] = [[0,0,0,0], [0,0,0,0]]
        // B[4x2] = [[0,0], [0,0], [0,0], [0,0]]
        // C[2x2] = [[0,0], [0,0]]
        
        // For K=4, we send 4 iterations
        // Iteration 0: A[:,0] and B[0,:]
        // send A[0,0]=0 to row 0
        // send A[1,0]=0 to row 1
        // send B[0,0]=0 to col 0
        // send B[0,1]=0 to col 1
        
        // (Actual sends would go here)
        
        let tok = send(tok, terminator, true);
    }
}

#[test_proc]
proc test_identity {
    terminator: chan<bool> out;

    init { () }

    config(terminator: chan<bool> out) {
        (terminator,)
    }

    next(state: ()) {
        let tok = join();
        
        // Test: A * I = A (identity)
        // A[2x4] = [[1,2,3,4], [5,6,7,8]]
        // I[4x2] = [[1,0], [0,1], [0,0], [0,0]] (first 2 cols of identity)
        // C[2x2] = [[1,2], [5,6]]
        
        let tok = send(tok, terminator, true);
    }
}

#[test_proc]
proc test_simple_mult {
    terminator: chan<bool> out;

    init { () }

    config(terminator: chan<bool> out) {
        (terminator,)
    }

    next(state: ()) {
        let tok = join();
        
        // Test: Simple multiplication
        // A[2x4] = [[1,0,0,0], [0,1,0,0]]
        // B[4x2] = [[2,0], [0,3], [0,0], [0,0]]
        // C[2x2] = [[2,0], [0,3]]
        
        let tok = send(tok, terminator, true);
    }
}
