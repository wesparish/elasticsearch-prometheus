FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y python-pip && \
    pip install elasticsearch-prometheus

CMD ['elasticsearch-prometheus.py']

