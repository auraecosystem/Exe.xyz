# integrations 
add llm --name=Lmlm --openai=chatgpt --anthropic=managed --fireworks=managed --xai=managed --openai-account=chatgpt --attach=tag:Lmlm --attach=tag:web4 --attach=tag:spdf --attach=tag:rtf --attach=tag:rdf --attach=tag:llm-2 --attach=tag:iot --attach=tag:ghe --attach=tag:ghcr --attach=tag:gh-io --attach=tag:gh --attach=tag:gcr --attach=tag:gcp --attach=tag:all --attach=auto:all --attach=tag:aura

# Added integration
lmlm (llm, providers=anthropic(gateway),openai(chatgpt:chatgpt),fireworks(gateway),xai(gateway))

# Usage from a VM:
  curl https://lmlm.int.exe.xyz/v1/models
codex --model gpt-5.5 
-c model_provider=exe-llm-3 
-c 'model_providers.exe-llm-3.name="exe-llm-3"' 
-c 'model_providers.exe-llm-3.base_url="https://llm-3.int.exe.xyz/v1"'

ANTHROPIC_API_KEY=implicit 
ANTHROPIC_BASE_URL=https://llm-3.int.exe.xyz 
claude --model opus


codex --model gpt-5.5 
-c model_provider=exe-llm 
-c 'model_providers.exe-llm.name="exe-llm"' 
-c 'model_providers.exe-llm.base_url="https://llm.int.exe.xyz/v1"'

ANTHROPIC_API_KEY=implicit 
ANTHROPIC_BASE_URL=https://llm.int.exe.xyz 
claude --model opus
