FROM alpine:3.11

RUN apk add --no-cache --update python3

RUN apk add --no-cache --update --virtual .build-deps \
    py3-pip && \
    pip3 install --no-cache iredis==v1.9.1 && \
    apk del .build-deps

ENTRYPOINT ["iredis"]
