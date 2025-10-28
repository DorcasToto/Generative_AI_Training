import from byllm.lib { Model, Image }

glob llm = Model(
    model_name = "anthropic/claude-3-haiku-20240307",
    provider = "anthropic"
    );

"""Generate a detailed caption for the given image."""
def caption_image(image: Image) -> str by llm();

with entry {
    caption = caption_image(Image("photo.jpg"));
    print(caption);
}