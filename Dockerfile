FROM python:3.12.0b1-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ai-plugin.json ai-plugin.json
COPY app.py app.py
COPY openapi.yaml openapi.yaml

EXPOSE 5000

CMD ["python", "app.py"]
