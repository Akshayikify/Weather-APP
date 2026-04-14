FROM python:3.11-slim

WORKDIR /app

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

RUN apt-get update && apt-get install -y --no-install-recommends gcc python3-dev

COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["flask", "run"]