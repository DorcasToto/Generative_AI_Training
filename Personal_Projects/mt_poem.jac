import from byllm.lib { Model }
glob llm = Model(
    model_name = "anthropic/claude-3-haiku-20240307",
    provider = "anthropic"
    );
def write_poetry(topic: str) -> str by llm();
with entry {
    poem = write_poetry("A serene landscape with mountains.");
    print(poem);
}