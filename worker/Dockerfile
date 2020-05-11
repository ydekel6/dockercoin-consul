FROM python:alpine
RUN pip install redis requests
COPY ./worker.py .
COPY consul /bin/
ADD entry-point.sh /bin/
COPY envconsul /bin/
ENTRYPOINT ["entry-point.sh"]
CMD ["python","worker.py"]

