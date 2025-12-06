from langchain_classic.tools.retriever import create_retriever_tool
from langchain_core.vectorstores import InMemoryVectorStore
from langchain_openai import OpenAIEmbeddings
from langchain_text_splitters import RecursiveCharacterTextSplitter, MarkdownHeaderTextSplitter

urls = [
    "https://github.com/goyogle/xls/blob/90e71c2ba5a8dc477842b6d8ac20435e78a6941d/docs_src/dslx_reference.md",
    "https://github.com/google/xls/blob/90e71c2ba5a8dc477842b6d8ac20435e78a6941d/docs_src/dslx_std.md",
    "https://github.com/google/xls/blob/90e71c2ba5a8dc477842b6d8ac20435e78a6941d/docs_src/floating_point.md",
]

# docs = [WebBaseLoader(url).load() for url in urls]

# docs_list = [item for sublist in docs for item in sublist]

header_splitter = MarkdownHeaderTextSplitter(
    headers_to_split_on=[
        ("#", "heading_1"),
        ("##", "heading_2"),
        ("###", "heading_3"),
    ]
)

text_splitter = RecursiveCharacterTextSplitter.from_tiktoken_encoder(
    chunk_size=100, chunk_overlap=50
)
doc_splits = text_splitter.split_documents(docs_list)

vectorstore = InMemoryVectorStore.from_documents(
    documents=doc_splits, embedding=OpenAIEmbeddings()
)
retriever = vectorstore.as_retriever()

retriever_tool = create_retriever_tool(
    retriever,
    "retrieve_blog_posts",
    "Search and return information about Lilian Weng blog posts.",
)
