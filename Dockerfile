FROM python:3.9-slim
WORKDIR /app
COPY . /app


RUN apt-get update --allow-insecure-repositories && \
    apt-get install -y --allow-unauthenticated python3-venv


RUN python3 -m venv /app/venv && \
    . /app/venv/bin/activate && \
    python -m ensurepip --upgrade && \
    pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip install flask


ENV PATH="/app/venv/bin:$PATH"

CMD ["python", "-m", "pytest"]
