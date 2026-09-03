FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY 95.py ./

# پوشه دیتا برای Volume
RUN mkdir -p /data/clients

ENV DATA_DIR=/data
ENV PYTHONUNBUFFERED=1

CMD ["python", "95.py"]
