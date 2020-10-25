FROM python:alpine
RUN pip install redis requests
RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*
COPY ./worker.py .
RUN  curl -o ./consul.zip  -O -J -L https://releases.hashicorp.com/consul/1.6.2/consul_1.6.2_linux_amd64.zip \
     && unzip ./consul.zip -d /bin/
ADD entry-point.sh /bin/
COPY envconsul /bin/
ENTRYPOINT ["entry-point.sh"]
CMD ["python","worker.py"]

