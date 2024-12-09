# Wähle ein Basis-Image
FROM python:3.9-slim

# Arbeitsverzeichnis im Container erstellen
WORKDIR /app

# Abhängigkeiten installieren
COPY requirements.txt .
RUN pip install -r requirements.txt

# Kopiere den Rest des Codes
COPY . .

# Exponiere den Port
EXPOSE 5000

# Startbefehl für den Container
CMD ["python", "app.py"]
