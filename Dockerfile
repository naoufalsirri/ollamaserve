FROM ubuntu:22.04

# Installer curl, ollama, etc.
RUN apt-get update && apt-get install -y curl gnupg unzip

# Télécharger et installer Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Télécharger le modèle Mistral au démarrage
CMD ["sh", "-c", "ollama pull mistral && ollama serve"]
