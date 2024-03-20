FROM alpine:3.19

RUN apk add --update --no-cache gawk bash

RUN apk add --update --no-cache --virtual build_deps wget openssl && \
    wget https://raw.githubusercontent.com/soimort/translate-shell/gh-pages/trans && \
    apk del build_deps && \
    chmod +x trans && \
    mv trans /bin/trans

ENTRYPOINT ["trans"]
