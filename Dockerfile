FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY manager_82.py ./

ENV DATA_DIR=/data
ENV PYTHONUNBUFFERED=1

CMD ["python", "manager_82.py"]
