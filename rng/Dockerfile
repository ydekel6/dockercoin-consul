FROM python:alpine as RNG
WORKDIR /usr/src/app/exec
RUN apk add curl
RUN echo DOWNLOADING CONSUL CLI
RUN curl -o ./consul.zip  -O -J -L https://releases.hashicorp.com/consul/1.6.2/consul_1.6.2_linux_amd64.zip 
RUN unzip ./consul.zip -d /usr/bin
RUN pip install Flask
ADD entry-point.sh /usr/bin
COPY envconsul /usr/bin
WORKDIR /usr/src/app/
COPY rng.py .
ENTRYPOINT ["entry-point.sh"]
CMD ["python","rng.py"]
EXPOSE 80
