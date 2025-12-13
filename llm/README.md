# LLM-Based Allo → DSLX Lowering Pipeline

This directory contains the implementation of the LLM-driven compilation workflow used to translate Allo kernels into DSLX via an iterative agent loop implemented with **LangGraph**. It includes the code for prompt construction, interpreter integration, loopback refinement, evaluation scripts, and experimental configurations.

---

## Directory Tree
```
├── documents: DSLX documentation  
│   ├── dslx_floating_point.md  
│   ├── dslx_reference.md  
│   └── dslx_standard_library.md  
├── evaluation  
│   ├── analyze.py: Script to run several trials per input  
│   ├── eval_config.yaml: Parameters for analyze script  
│   └── write_sheet.py: Script to parse logfiles and update spreadsheet (not yet general purpose)  
├── input: Allo inputs  
│   ├── prob01_simple.py  
│   ├── allo_gemm_test.x  
│   ├── prob02_split_outer.py  
│   ├── prob03_split_inner.py  
│   ├── prob04_split_both.py   
│   ├── prob05_split_both_merge.py  
│   └── prob06_two_kernels.py
├── main.py: Script for single trial  
├── setup_config.yaml: Parameters for single trial  
├── utils  
│   └── call_llm.py: Helper function to call LLM  
├── workflow_graph.png  
├── workflow.md  
└── workflows  
    ├── graph.py: Base class for workflow states
    ├── routers.py  
    ├── states.py  
    └── steps  
        ├── done.py  
        ├── generate.py  
        ├── generate_query.py  
        ├── interpret.py  
        └── loopback.py  
```
## Workflow

The agent workflow has four steps:
1. Generate: Construct and send the prompt to the LLM, receive and write the output DSLX file
2. Interpret: Run the output DSLX file on the interpreter, identify if there are any errors and dictate the flow accordingly
3. Loopback: Concatenate the output and the associated error message, pass back to the generate block to attach to the next iteration's prompt
4. Done: Capture and record the metrics for the full run (success status, number of iterations, token usage)

The workflow block diagram is shown in workflow.png





## Running the Agent

### Running a single trial
1. Navigate to the llm directory
2. Set the desired parameters in setup_config.yaml  
    * num_iter: Max number of iterations - loop will exit once this number of iterations is reached even if a valid output has not been produced
    * model: LLM model (e.g. gpt-5-mini)
    * api_key: Paste your OpenAI/Anthropic API keys
    * source: Specify the list of input files to (input file can also be a command line argument)
    * additional_instructions: Documentation to provide to the LLM
3. Execute ```python3 main.py ```
4. The output DSLX files for each iteration will appear in the the llm/build directory
5. The full log of prompts, outputs, errors, and final summary statistics will appear in output.log

### Running multiple trials over multiple inputs
1. Navigate to the llm/evaluation directory
2. Set the desired parameters in eval_config.yaml
    * num_trials: Number of trials per input source
    * source: List of input Allo files to iterate over
    * test: DSLX test suite file
3. Execute ``` python3 analyze.py ```
4. A directory for the outputs for each trial will be created in llm/build
5. The log and test results for each trial will be created in evaluation/build
6. At the end of the full experiment, the agent and test summary logs will be created in evaluation/build


### Reading the outputs
After a run of analyze.py, two summary files will be created in evaluation/build: agent_summary.log and dslx_summary.log. The former contains the number of iterations taken to produce a valid output for each trial, while the latter contains the success status after the outputs are run on the DSLX test suite. In agent_summary.log, a number indicates that a valid output was produced in that number of iterations, while an X indicates that the trial failed to produce a valid output. In agent_summary.log, a '.' indicates that the output successfully passed the test suite, an 'F' indicates that a valid output failed at least one test in the test suite, and a 'f' indicates that there was no valid output. 