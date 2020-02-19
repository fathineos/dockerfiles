FROM alpine:3.11

RUN apk add --no-cache --update \
    libevent \
    libpq \
    python3

RUN apk add --no-cache --update --virtual .build-deps \
    gcc \
    libevent-dev \
    musl-dev \
    postgresql-dev \
    py3-pip \
    python3-dev && \
    pip3 install --no-cache pgcli==v2.2.0 && \
    apk del .build-deps

ADD entrypoint.sh /entrypoint.sh
ADD config /root/.config/pgcli/config

ENTRYPOINT ["/bin/sh", "--", "/entrypoint.sh"]
