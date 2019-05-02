FROM alpine:3.9

RUN apk add --no-cache --virtual tmp_deps wget && \
    # add dependencies
    apk add bash gawk openssl && \
    # https://github.com/soimort/translate-shell
    wget https://raw.githubusercontent.com/soimort/translate-shell/gh-pages/trans && \
    # remove unnecessary packages for runtime
    apk del tmp_deps && \
    chmod +x trans && \
    mv trans /bin/trans

ENTRYPOINT ["trans"]
