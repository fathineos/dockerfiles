FROM alpine:edge

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
    # pip3 install --no-cache pgcli && \
    pip3 install -U https://github.com/dbcli/pgcli/archive/master.zip && \
    apk del .build-deps

ADD entrypoint.sh /entrypoint.sh
ADD config /root/.config/pgcli/config

ENTRYPOINT ["/bin/sh", "--", "/entrypoint.sh"]
