from typing_extensions import TypedDict
from typing import List, Dict, Annotated
from operator import add, concat

# ============================================================
# Overall State
# ============================================================

class State(TypedDict):

    # ----------- initial state and user inputs -----------
    # input files
    input_file_path: str
    instructions_file_path: str

    # output dir
    output_dir: str

    # basename
    basename : str # just the basename of the input_file_path, no file extensions

    # global accumulators
    gen_idx: Annotated[int, add]

    prompt_token: Annotated[int, add]
    completion_token: Annotated[int, add]

    # ----------- generate -----------
    # inputs
    # - gen_idx
    # - input_file_path
    # - instructions_file_path
    # - loopback_context
    # - basename
    # - output_dir
    
    # outputs
    # - prompt_token
    # - completion_token

    # ----------- interpret -----------
    # inputs
    # - gen_idx
    # - output_dir
    # - basename

    # outputs
    error_code: bool
    error_message: str

    # ----------- loopback -----------
    # inputs
    # - gen_idx
    # - basename
    # - output_dir
    # - error_code
    # - error_message
    # - acc_output

    # outputs
    # - gen_idx
    loopback_context: str
    acc_output: Annotated[List, concat] # accumulated output for all rounds

    # ----------- done ----------- TODO
    # inputs
    prompt_token: int
    completion_token: int
