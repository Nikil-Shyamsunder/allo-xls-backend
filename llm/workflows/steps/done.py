import logging
import os
from typing import List, Dict
logger = logging.getLogger(__name__)

from ..states import (
    State
)

def node(state: State):
    gen_idx = state.get("gen_idx", 0)
    error_code = state.get("error_code", None)
    prompt_token = state.get("prompt_token", None)
    completion_token = state.get("completion_token", None)
    input_file_path = state.get("input_file_path", None)
    output_dir = state.get("output_dir", None)
    basename = state.get("basename", None)

    output_file_path = os.path.join(output_dir, f"{basename}_{gen_idx}.x")

    try:
        assert error_code is not None, "error_code cannot be None"
        assert prompt_token is not None, "prompt_token cannot be None"
        assert completion_token is not None, "completion_token cannot be None"
        assert input_file_path is not None, "input_file_path cannot be None"
        assert os.path.isfile(input_file_path), f"input_file_path must exist: {input_file_path}"
        assert output_dir is not None, "output_dir cannot be None"
        assert basename is not None, "basename cannot be None"
        assert os.path.isfile(output_file_path), f"output_file_path must exist: {output_file_path}"
    except AssertionError as e:
        logger.error(e)
        raise e
    
    # check if error is solved
    if error_code:
        logger.info("status: fail")
        logger.info(f"input source: {input_file_path}")
        logger.info(f"final output file path: N/A")
        logger.info(f"prompt tokens: {prompt_token}")
        logger.info(f"completion tokens: {completion_token}")
        logger.info(f"number of generations: {gen_idx + 1}")
    else:
        logger.info("status: success")
        logger.info(f"input source: {input_file_path}")
        logger.info(f"final output file path: {output_file_path}")
        logger.info(f"prompt tokens: {prompt_token}")
        logger.info(f"completion tokens: {completion_token}")
        logger.info(f"number of generations: {gen_idx + 1}")