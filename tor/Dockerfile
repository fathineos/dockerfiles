FROM ubuntu:19.10

RUN apt update -qq && apt install -qq --assume-yes tor
ENV REDIRECT=127.0.0.1:80
ENV APP_NAME=app

COPY ./torrc /etc/torrc
COPY ./start.sh /start.sh

RUN mkdir /hidden_service/ && \
    chmod 700 /hidden_service/

RUN /usr/sbin/tor-instance-create $APP_NAME

CMD ./start.sh
