FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app/
COPY ./app /app

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt


ENV PYTHONPATH=/app