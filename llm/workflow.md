The workflow will have two steps:
1. Generate
2. Interpret
3. Process

## Expected behavior
1. Creates a build directory
2. Lowers from allo to xls. The specific input language is specified in the input (dls/mlir) and output (dslx/something) language of the config
3. The code to lower and any additional instructions will also be taken as input to the llm to generate the lowering
4. Lowered output will be located in the output/ directory with index affixes to indicate the number of generation
5. Code will be copied into a tmp directory in the docker image, and the interpreter will be invoked on it
6. The output will post processed and be fed back in the llm

## Baseline implementation
- only supports lowering from allo dsl to dslx

## Step 0: Setup 
(a step executed by main but not a part of langraph)
It creates a build directory or cleans its contents

## Step 1: Generate
An llm call with broad prompts and general intructions for lowering (not specific to a kernel)

The output of this generation will be in the build directory

## Step 2: Interpret
Will copy the generated text from the build directory to a docker image and will run the interpreter on that 
- will just grep for "ParseError" in the output

## Step 3.1: Done
If there are no errors, it will create a simbolink to the final generation as well as a summary file that contains:
- status = succeed
- input source file path
- final output file path
- number of tokens
- number of generations

If maximum generation recursion is hit will NOT create simbolink but will create the summary file
- status = fail
- input source file path
- final output file path = empty
- number of tokens
- number of generations

## Step 3.2: Loopback
If there are errors, will prepare context for the next round of generation

## LLM generation techniques
### RAG
Documentation for both allo and DSLX code
### Few shot examples (1)
Example code of allo and dslx separately
### Few shot examples (2)
Example of a lowering