FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install-y python3-venv
RUN python3-m venv venv
RUN /app/venv/bin/pip install --upgrade pip
RUN /app/venv/bin/pip install -r requirements.txt
RUN /app/venv/bin/pip install flask
CMD ["/app/venv/bin/python", "-m","pytest"] 
