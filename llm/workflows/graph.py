from typing import Annotated
import json

from typing_extensions import TypedDict

from langgraph.graph import StateGraph, START, END

from workflows.steps import (
    generate
    )

from workflows.states import OverallState as State

graph_builder = StateGraph(State)

graph_builder.add_node("generate", generate.node)

graph_builder.add_edge(START, "generate")
graph_builder.add_edge("generate", END)

workflow = graph_builder.compile()