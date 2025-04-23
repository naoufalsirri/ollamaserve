FROM ubuntu:22.04

# Installer les dépendances nécessaires
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    gnupg \
    unzip

# Ajouter l'utilisateur ollama
RUN useradd -m ollama

# Installer Ollama
RUN curl -fsSL https://ollama.com/install.sh | bash

# Passer à l'utilisateur ollama
USER ollama
WORKDIR /home/ollama

# Lancer le serveur
CMD ["ollama", "serve"]
