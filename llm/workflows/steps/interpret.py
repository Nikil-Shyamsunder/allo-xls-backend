import logging
import re
import os
import docker
import uuid
logger = logging.getLogger(__name__)

from ..states import (
    State
)

def node(state: State):
    # get inputs
    gen_idx = state.get("gen_idx", 0)
    output_dir = state.get("output_dir", None)
    basename = state.get("basename", None)

    output_file = os.path.join(output_dir, basename + f"_{gen_idx}.x")

    # assert input preconditions
    try:
        assert basename is not None, "basename cannot be None"
        assert output_dir is not None, "output_dir cannot be None"
        assert os.path.isdir(output_dir), f"output_dir must exist: {output_dir}"
        assert os.path.isfile(output_file), f"output_file must exist: {output_file}"
    except AssertionError as e:
        logger.error(e)
        raise e

    # docker
    container_name = "xls-ece6775-fa25"
    client = docker.from_env()

    # copy output file content to docker image temp dir
    logger.info(f"copying output file to container {container_name}")
    output_container_path = f"/tmp/{basename}_{gen_idx}_{uuid.uuid4()}.txt"
    
    with open(output_file, "r") as f:
        output_content = f.read()
    container = client.containers.get(container_name)
    cmd = f'printf "%s" "$CONTENT" > {output_container_path}'
    exit_code, output = container.exec_run(
        ["sh", "-c", cmd],
        environment={"CONTENT": output_content},
    )
    try:
        assert exit_code == 0, f"failed to copy file to container: {output}"
    except AssertionError as e:
        logger.error(e)
        raise e
    
    logger.info(f"copied output file to {output_container_path}")

    # run the interpreter
    interpreter_main = "~/xls/bazel-bin/xls/dslx/interpreter_main"

    error_code, error_message = container.exec_run(["sh", "-c", f"{interpreter_main} {output_container_path}"])

    error_message = error_message.decode("utf-8")

    logger.info(f"interpreter output: {error_message}")
    
    return {
        "error_code": error_code,
        "error_message": error_message
    }
