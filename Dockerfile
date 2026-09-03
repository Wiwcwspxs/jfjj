FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY 77.py 78.py ./

# نیاز به داخل یک Volume
RUN mkdir -p /data/clients

ENV DATA_DIR=/data
ENV PYTHONUNBUFFERED=1

CMD ["python", "77.py"]
