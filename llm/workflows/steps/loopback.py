import logging
import os
from typing import List, Dict
logger = logging.getLogger(__name__)

from ..states import (
    State
)

def node(state: State):
    gen_idx = state.get("gen_idx", 0)
    basename = state.get("basename", None)
    output_dir = state.get("output_dir", None)
    error_code = state.get("error_code", None)
    error_message = state.get("error_message", None)
    acc_output = state.get("acc_output", [])

    try:
        assert basename is not None, "basename cannot be None"
        assert output_dir is not None, "output_dir cannot be None"
        assert os.path.isdir(output_dir), f"output_dir must exist: {output_dir}"
        assert error_code is not None, "error_code cannot be None"
        assert error_message is not None, f"error_message cannot be None"
    except AssertionError as e:
        logger.error(e)
        raise e
    
    # get the original generated output
    output_file = os.path.join(output_dir, basename + f"_{gen_idx}.x")

    try:
        with open(output_file, "r") as f:
            generated_output = f.read()

        assert generated_output.strip() != "", f"found empty generated content: {output_file}"
    except Exception as e:
        logger.error(e)
        raise e

    # accumulate the output for this generation
    output_summary = [{
        "generated_output": generated_output,
        "error_message": error_message
    }]

    acc_output += output_summary
    logger.info(acc_output)
    loopback_context = format_context(acc_output)

    return {
        "gen_idx": 1,
        "loopback_context": loopback_context,
        "acc_output": output_summary
    }

def format_context(acc_output: List[Dict]):
    output = ""
    for i in range(len(acc_output)):
        output += f"Generation {i}: \n"
        output += f'{acc_output[i]["generated_output"].strip()} \n'
        output += '\n'
        output += f"Error message {i}: \n"
        output += f'{acc_output[i]["error_message"].strip()} \n\n'
    return output