import logging
import re
import os
logger = logging.getLogger(__name__)

from ..states import (
    State
)

from utils.call_llm import call_llm

system_message = """You are an expert compiler and is very knowledgable in allo and xls. You are responsible for lowering from Allo DSL to DSLX.

Please enclose your output within the tags <CODE> and </CODE>, do not use ```:

<CODE>
... your code here ...
</CODE>
"""

user_message = """Please lower this kernel written in Allo DSL to DSLX

<allo_dsl>
{allo_dsl}
</allo_dsl>
"""

additional_instructions_suffix = """<additional_instructions>
{additional_instructions}
</additional_instructions>
"""

loopback_context_suffix = """Here are your previous attempts and the error message of the parser

<previous_attempts>
{previous_attempts}
</previous_attempts>
"""

def node(state: State):
    # get inputs
    gen_idx = state.get("gen_idx", 0)
    input_file_path = state.get("input_file_path", None)
    instructions_file_path = state.get("instructions_file_path", None)
    loopback_context = state.get("loopback_context", None)
    basename = state.get("basename", None)
    output_dir = state.get("output_dir", None)

    # assert input preconditions
    try:
        assert input_file_path is not None, "input_file_path cannot be None"
        assert os.path.isfile(input_file_path), f"input_file_path must exist: {input_file_path}"
        assert basename is not None, "basename cannot be None"
        assert output_dir is not None, "output_dir cannot be None"
        assert os.path.isdir(output_dir), f"output_dir must exist: {output_dir}"
    except AssertionError as e:
        logger.error(e)
        raise e

    # construct user message
    try:
        with open(input_file_path, "r") as f:
            allo_content = f.read()
    except Exception as e:
        logger.error(e)
        raise e

    # additional instructions
    instructions_suffix = ""
    if instructions_file_path is not None:
        try:
            with open(instructions_file_path, "r") as f:
                additional_instructions = f.read()
            if additional_instructions.strip() != "":
                instructions_suffix = additional_instructions_suffix.format(additional_instructions=additional_instructions)
        except FileNotFoundError as e:
            logger.warning(f"instructions_file_path: {instructions_file_path} not found. No instructions given")

     
    # retry context
    if loopback_context is not None:
        loopback_suffix = loopback_context_suffix.format(previous_attempts=loopback_context)
    else:
        loopback_suffix = ""
    
    user_msg = user_message.format(allo_dsl=allo_content) + instructions_suffix + loopback_suffix
    logger.info(f"system_msg: {system_message}")
    logger.info(f"user_msg: {user_msg}")

    # generate
    retry = True
    retry_idx = 0
    acc_p_token = 0
    acc_c_token = 0
    while retry and retry_idx < 10:
        try:
            # call llm
            response = call_llm(system_message, user_msg)
            llm_response = response["llm_response"]
            prompt_token = response["prompt_token"]
            completion_token = response["completion_token"]

            # accumulate tokens
            acc_p_token += prompt_token
            acc_c_token += completion_token
            
            # log attempts
            logger.info(f"Attempt #{retry_idx}")
            logger.info(f"llm_response: {llm_response}")
            logger.info(f"prompt_token: {prompt_token}")
            logger.info(f"completion_token: {completion_token}")

            # process llm response
            parsed_response = re.findall(r"<CODE>(.*?)</CODE>", llm_response, flags=re.DOTALL)
            assert parsed_response != [], "failed to parse llm_response"
            retry = False

        except Exception as e:
            logger.error(e)
            retry_idx += 1
            if retry_idx >= 10:
                raise e

    # print output to file
    output_file = os.path.join(output_dir, basename + f"_{gen_idx}.x")
    os.makedirs(os.path.dirname(output_file), exist_ok=True)

    with open(output_file, "w") as f:
        f.write(parsed_response[0])

    return {
        "prompt_token": acc_p_token,
        "completion_token": acc_c_token
    }