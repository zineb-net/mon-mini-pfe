# Utilise une image Python légère
FROM python:3.9-slim

# Crée un dossier de travail
WORKDIR /app

# Copie les fichiers nécessaires
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie le reste du code
COPY app/ app/

# Ouvre le port 5000
EXPOSE 5000

# Lance l'application
CMD ["python", "app/main.py"]