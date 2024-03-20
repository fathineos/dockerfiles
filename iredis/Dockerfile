FROM alpine:3.19

COPY ./pip.conf ~/.config/pip/pip.conf
RUN apk add --no-cache --update python3 py3-pip

RUN pip3 install --no-cache iredis==v1.12.1

ENTRYPOINT ["iredis"]
