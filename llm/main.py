import yaml, os, shutil
import subprocess
from pathlib import Path
from  workflows.graph import workflow

# importing module
import logging

# Create and configure logger
logging.basicConfig(filename="output.log",
                    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                    filemode='w',
                    level=logging.INFO)

LLM_DIR = os.getcwd()


def setup():
    output_dir = os.path.join(LLM_DIR, "build")

    if os.path.exists(output_dir):
        shutil.rmtree(output_dir)
    os.makedirs(output_dir, exist_ok=True)

    with open("setup_config.yaml", "r") as f:
        config = yaml.safe_load(f)

    api_key = config["openai"]["api_key"]
    os.environ['OPENAI_API_KEY'] = api_key

    input_file_path = os.path.join(LLM_DIR, "input", config["input"]["source"])
    instructions_file_path = os.path.join(LLM_DIR, "input", config["input"]["additional_instructions"])
    basename = Path(input_file_path).stem
    gen_idx = 0
    prompt_token = 0
    completion_token = 0

    return {
        "input_file_path": input_file_path, 
        "instructions_file_path": instructions_file_path, 
        "output_dir": output_dir, 
        "basename": basename, 
        "gen_idx": gen_idx, 
        "prompt_token": prompt_token, 
        "completion_token": completion_token
    }


def main():
    initialization = setup()
    workflow.invoke(initialization, {"recursion_limit": 35})

if __name__ == "__main__":
    main()