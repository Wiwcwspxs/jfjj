FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY 95.py ./

ENV DATA_DIR=/data
ENV PYTHONUNBUFFERED=1

CMD ["python", "95.py"]
