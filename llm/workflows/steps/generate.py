from ..states import (
    GenerationInputState as InputState,
    GenerationOutputState as OutputState
)

from utils.call_llm import call_llm

system_message = """
You are an expert compiler and is very knowledgable in allo and xls. You are responsible for lowering from Allo DSL to DSLX.

Please enclose your output within the tags <CODE> and </CODE>:

<CODE>
...
</CODE>
"""

user_message = """
Please lower this kernel written in Allo DSL to DSLX

<allo_dsl>
def allo_gemm(A: int32[32, 32], B: int32[32, 32]) -> int32[32, 32]:
    C: int32[32, 32] = 0
    for i, j, k in allo.grid(32, 32, 32):
        C[i, j] += A[i, k] * B[k, j]
    return C
</allo_dsl>
"""

def node(state = InputState) -> OutputState:
    response = call_llm(system_message, user_message)
    llm_response = response["llm_response"]

    print(llm_response)