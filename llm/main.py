import yaml, os
from  workflows.graph import workflow

def setup():
    with open("setup_config.yaml", "r") as f:
        config = yaml.safe_load(f)

    api_key = config["openai"]["api_key"]
    os.environ['OPENAI_API_KEY'] = api_key

def main():
    setup()
    workflow.invoke({})

if __name__ == "__main__":
    main()