FROM docker.io/library/python:3.11-slim@sha256:233de06753d30d120b1a3ce359d8d3be8bda78524cd8f520c99883bfe33964cf

WORKDIR /app

ENV PYTHONUNBUFFERED 1


COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt --user


COPY . /app

CMD ["python", "./app.py"]