FROM alpine:3.16

RUN apk add --no-cache --update \
    musl-dev \
    postgresql \
    py3-pip \
    python3 && \
    pip3 install --no-cache pgcli==v3.5.0

ADD entrypoint.sh /entrypoint.sh
ADD config /root/.config/pgcli/config

ENTRYPOINT ["/bin/sh", "--", "/entrypoint.sh"]
