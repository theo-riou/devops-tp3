FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN apt-get update --allow-insecure-repositories
RUN apt-get install -y --allow-unauthenticated python3-venv
RUN python3 -m venv venv
RUN ./venv/bin/pip install --upgrade pip
RUN ./venv/bin/pip install -r requirements.txt
RUN ./venv/bin/pip install flask
CMD ["./venv/bin/python", "-m","pytest"]