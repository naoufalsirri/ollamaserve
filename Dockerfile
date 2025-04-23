FROM ollama/ollama

# Expose le port utilisé par Ollama
EXPOSE 11434

# Commande de démarrage :
# - Démarre le serveur
# - Tire le modèle mistral juste après (en tâche de fond)
CMD ["sh", "-c", "ollama serve & sleep 5 && ollama pull mistral && wait"]
