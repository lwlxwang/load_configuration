FROM python:3-slim-buster
LABEL maintainer="tj@tjkarjalainen.com"
COPY requirements.txt /requirements.txt
COPY load_conf_to_json.py /src/load_conf_to_json.py
COPY load_conf_to_yaml.py /src/load_conf_to_yaml.py
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /src