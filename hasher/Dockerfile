#hasher
FROM ruby:alpine
RUN apk add --update build-base curl
RUN gem install sinatra
RUN gem install thin
ADD hasher.rb /
RUN gem install curl
RUN echo DOWNLOADING CONSUL CLI
RUN  curl -o ./consul.zip  -O -J -L https://releases.hashicorp.com/consul/1.6.2/consul_1.6.2_linux_amd64.zip
RUN unzip ./consul.zip -d /bin/
COPY entry-point.sh /bin/
COPY envconsul /bin/
ENTRYPOINT ["entry-point.sh"]
CMD ["ruby", "hasher.rb"]
EXPOSE 80
