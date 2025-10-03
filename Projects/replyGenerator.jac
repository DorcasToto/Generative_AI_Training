import from byllm { Model }

glob llm = Model(
    provider = "anthropic",
    model_name = "anthropic/claude-3-haiku-20240307" 
);

def generate_reply(complaint: str) -> str by llm();

with entry {
    let complaint = "I’m really frustrated by the delay in policy activation.";

    let prompt = """
You are a customer service agent. Write a short, polite and professional reply to this customer complaint:

"{{complaint}}"
""";

    let full_prompt = prompt.replace("{{complaint}}", complaint);
    let reply = generate_reply(complaint=full_prompt);

    print("📩 Complaint: " + complaint);
    print("\n🤖 AI Reply:\n" + reply);
}
