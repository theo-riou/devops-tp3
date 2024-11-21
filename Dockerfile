FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN python -m venv venv
RUN /app/venv/bin/pip install --upgrade pip
RUN /app/venv/bin/pip install -r requirements.txt
RUN /app/venv/bin/pip install flask
CMD ["/app/venv/bin/python", "-m","pytest"] 
