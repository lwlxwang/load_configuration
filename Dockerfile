FROM ubuntu
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
COPY requirements.txt /requirements.txt
COPY configurations/ /configurations
COPY load_conf_to_json.py /load_conf_to_json.py
COPY load_conf_to_yaml.py /load_conf_to_yaml.py
RUN ["pip3", "install", "-r", "requirements.txt"]
RUN ["mkdir", "output"]
RUN ["python3", "load_conf_to_json.py"]
RUN ["python3", "load_conf_to_yaml.py"]