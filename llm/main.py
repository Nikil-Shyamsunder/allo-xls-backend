import yaml, os, shutil, sys
import subprocess
from pathlib import Path
from  workflows.graph import workflow

import logging
import argparse

# Create and configure logger
logging.basicConfig(
    # filename="output.log",
    handlers=[
        logging.FileHandler("output.log", mode='w'), # Log to a file
        logging.StreamHandler(sys.stdout)            # Print to console
    ],
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO)

LLM_DIR = os.path.dirname(os.path.abspath(__file__))

parser = argparse.ArgumentParser(description="An llm tool that lowers xls to dslx.")

parser.add_argument(
    "--input_file", default=None, help="The input xls file to, must be in the 'input' directory."
)

args = parser.parse_args()

def setup(source_file):
    output_dir = os.path.join(LLM_DIR, "build")

    if os.path.exists(output_dir):
        shutil.rmtree(output_dir)
    os.makedirs(output_dir, exist_ok=True)

    with open("setup_config.yaml", "r") as f:
        config = yaml.safe_load(f)

    # get llm keys
    openai_api_key = config["api_key"]["openai"]
    if openai_api_key is not None:
        os.environ['OPENAI_API_KEY'] = openai_api_key
    
    anthropic_api_key = config["api_key"]["anthropic"]
    if anthropic_api_key is not None:
        os.environ["ANTHROPIC_API_KEY"] = anthropic_api_key

    # verify chat model
    llm_model = config["model"]
    from langchain.chat_models import init_chat_model
    init_chat_model(llm_model)

    # get maximum number of generations
    num_iter = config["num_iter"]

    # initialize other states
    input_file_path = os.path.join(LLM_DIR, "input", source_file)
    instructions_file_path = [os.path.join(LLM_DIR, "input", path) for path in config["input"]["additional_instructions"]]
    basename = Path(input_file_path).stem
    gen_idx = 0
    prompt_token = 0
    completion_token = 0

    return {
        "model": llm_model,
        "num_iter": num_iter,
        "input_file_path": input_file_path, 
        "instructions_file_path": instructions_file_path, 
        "output_dir": output_dir, 
        "basename": basename, 
        "gen_idx": gen_idx, 
        "prompt_token": prompt_token, 
        "completion_token": completion_token
    }


def main():
    with open("setup_config.yaml", "r") as f:
        config = yaml.safe_load(f)

    if args.input_file is None:
        # iterate through the input files
        source_files = config["input"]["source"]
    else:
        source_files = [args.input_file]
    
    # get number of recursions
    recursion_limit = config["num_iter"] * 3 + 5

    for source_file in source_files:
        # initialize
        initialization = setup(source_file)
        workflow.invoke(initialization, {"recursion_limit": recursion_limit})

if __name__ == "__main__":
    main()