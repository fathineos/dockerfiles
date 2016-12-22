FROM debian:jessie

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && \
    apt-get install -qq -y kpcli

VOLUME /data
WORKDIR /data

ADD run.sh run.sh
ENTRYPOINT ["/data/run.sh"]
