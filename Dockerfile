# Utilise une image Python comme base
FROM python:3.9-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier tous les fichiers du projet dans le conteneur
COPY . .

# Installer les dépendances des différents services
# (Supposons qu'un fichier requirements.txt existe à la racine)
RUN if [ -f requirements.txt ]; then pip install -r requirements.txt; fi

# Expose le port principal (adapte si nécessaire)
EXPOSE 80

# Commande de démarrage
# Adapte cette commande pour lancer le service principal ou un orchestrateur
CMD ["python", "main.py"]  # Remplace "main.py" par le fichier principal du projet
