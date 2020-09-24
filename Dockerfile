FROM python:3-slim-buster
LABEL maintainer="tj@tjkarjalainen.com"
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /src
RUN python load_conf_to_json.py
RUN python load_conf_to_yaml.py