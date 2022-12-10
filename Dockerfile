# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
RUN pwd && ls
CMD ["flask", "--app", "flaskr", "--debug", "run", "--host=0.0.0.0"]
