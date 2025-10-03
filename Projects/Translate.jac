import from byllm { Model }

glob llm = Model(
    model_name = "anthropic/claude-3-haiku-20240307",
    provider = "anthropic"
    );

def translate_to(language: str, phrase: str) -> str by llm();

with entry {
    output = translate_to(language="Swahili", phrase="Hello world");
    print(output);
}
