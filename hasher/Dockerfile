FROM ruby:alpine as hasher
WORKDIR /usr/src/app/
RUN apk add --update build-base curl
RUN gem install sinatra
RUN gem install thin
#RUN gem install curl
#RUN echo DOWNLOADING CONSUL CLI
#RUN  curl -o ./consul.zip  -O -J -L https://releases.hashicorp.com/consul/1.6.2/consul_1.6.2_linux_amd64.zip 
#RUN unzip ./consul.zip -d /usr/bin
#COPY consul /bin/
#COPY entry-point.sh /usr/bin
#COPY envconsul /usr/bin
COPY hasher.rb .
#EXPOSE 80
#ENTRYPOINT ["entry-point.sh"]
CMD ["ruby","hasher.rb"]
