FROM python:alpine
RUN pip install redis requests
RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*
COPY ./worker.py .
COPY consul /bin/
ADD entry-point.sh /bin/
COPY envconsul /bin/
ENTRYPOINT ["entry-point.sh"]
CMD ["python","worker.py"]

