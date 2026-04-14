FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y --no-install-recommends gcc python3-dev
RUN pip install --no-cache-dir --user -r requirements.txt

COPY . .

CMD ["python3", "app.py"]