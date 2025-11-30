from typing import Annotated
import json

from typing_extensions import TypedDict

from langgraph.graph import StateGraph, START, END
from langchain_core.runnables.graph import MermaidDrawMethod

from workflows.steps import (
    generate,
    interpret,
    loopback,
    done
    )
from workflows.routers import router

from workflows.states import State

graph_builder = StateGraph(State)

graph_builder.add_node("generate", generate.node)
graph_builder.add_node("interpret", interpret.node)
graph_builder.add_node("loopback", loopback.node)
graph_builder.add_node("done", done.node)

graph_builder.add_edge(START, "generate")
graph_builder.add_edge("generate", "interpret")
graph_builder.add_conditional_edges("interpret", router,
                                    {True: "loopback", False: "done"})
graph_builder.add_edge("loopback", "generate")
graph_builder.add_edge("done", END)

workflow = graph_builder.compile()

workflow.get_graph().draw_mermaid_png(output_file_path="workflow_graph.png")