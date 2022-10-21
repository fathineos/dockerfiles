FROM alpine:3.16

RUN apk add --no-cache --update python3 py3-pip

RUN pip3 install --no-cache iredis==v1.12.1

ENTRYPOINT ["iredis"]
