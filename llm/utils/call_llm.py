from langchain.chat_models import init_chat_model
from langchain.messages import SystemMessage, HumanMessage
import yaml

from pydantic import BaseModel
import time

def llm_model():
    with open("setup_config.yaml", "r") as f:
        config = yaml.safe_load(f)

    model = config["model"]
    return model

def call_llm(system_message: str, user_message: str) -> dict:
    messages = [SystemMessage(content=system_message), HumanMessage(content=user_message)]
    llm = init_chat_model(llm_model())
    
    for _ in range(10):
        try:
            response = llm.invoke(messages)
            content = response.content
            prompt_tokens = response.response_metadata['token_usage']['prompt_tokens']
            completion_tokens = response.response_metadata['token_usage']['completion_tokens']
            break
        except Exception as e:
            print(f"ERROR: LLM query failed, retrying in 20 seconds: {e}")
            time.sleep(20)

    return {
        "llm_response": content,
        "prompt_token": prompt_tokens,
        "completion_token": completion_tokens
    }
