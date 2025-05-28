FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Instalación de dependencias del sistema
RUN apt update && apt install -y gcc pkg-config libmariadb-dev

# Crear carpeta y copiar código
WORKDIR /app
COPY . /app

# Instalar dependencias Python
RUN pip install --upgrade pip && \
    pip install flask sqlalchemy flask_sqlalchemy mysqlclient

EXPOSE 5000

ENV FLASK_APP=run.py
CMD ["flask", "run", "--host=0.0.0.0"]
