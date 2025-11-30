from .states import (
    State
)

def router(state: State) -> bool:
    """
    Returns True if there are errors (continue workflow), False otherwise.

    Router checks if there are errors in the overall state.
    """
    return state["error_code"] and (state.get("gen_idx", 0) < 9)