FROM alpine:3.12

RUN apk add --update --no-cache gawk bash openssl

RUN apk add --update --no-cache --virtual build_deps wget && \
    wget https://raw.githubusercontent.com/soimort/translate-shell/gh-pages/trans && \
    apk del build_deps && \
    chmod +x trans && \
    mv trans /bin/trans

ENTRYPOINT ["trans"]
