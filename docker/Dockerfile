FROM python:3-alpine

COPY dist /dist

RUN pip install /dist/elasticsearch-prometheus*.tar.gz

CMD ["/usr/local/bin/python", \
     "-u", \
     "/usr/local/bin/elasticsearch-prometheus.py"]
