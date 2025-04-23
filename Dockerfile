# Étape 1 : Utilise l'image officielle
FROM ollama/ollama

# Étape 2 : Télécharge le modèle mistral pendant la phase de build
RUN ollama pull mistral

# Étape 3 : Expose le port utilisé par ollama
EXPOSE 11434

# Étape 4 : Lance le serveur
CMD ["ollama", "serve"]
