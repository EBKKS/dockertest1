# Basis-Image
FROM python:3.9-slim

# Arbeitsverzeichnis setzen
WORKDIR /app

# Kopiere die Dateien ins Image
COPY . /app

# Installiere Abhängigkeiten
RUN pip install flask

# Port freigeben
EXPOSE 5000

# Startbefehl
CMD ["python", "app.py"]
