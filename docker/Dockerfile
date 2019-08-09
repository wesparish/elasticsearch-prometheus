FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y python-pip

COPY dist /dist

CMD ['elasticsearch-prometheus.py']

