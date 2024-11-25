FROM python:3.13-slim

# Instalar dependências do sistema
RUN apt-get update && apt-get install -y build-essential

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["gunicorn", "app:app"]
