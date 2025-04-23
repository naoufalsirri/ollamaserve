FROM ollama/ollama

EXPOSE 11434

# Utilise le shell comme point d’entrée
ENTRYPOINT ["sh", "-c"]

# Lance le serveur et télécharge le modèle mistral au démarrage
CMD ["ollama serve & sleep 5 && ollama pull mistral && wait"]
