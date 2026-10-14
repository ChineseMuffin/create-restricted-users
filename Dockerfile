FROM ubuntu

RUN apt update && apt install -y ansible

COPY requirements.yml /tmp/requirements.yml
RUN ansible-galaxy collection install -r /tmp/requirements.yml
