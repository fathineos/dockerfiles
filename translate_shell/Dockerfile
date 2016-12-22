FROM alpine:3.4

RUN apk update && \
    apk add ca-certificates wget && \
    update-ca-certificates && \
    apk add openssl bash gawk && \
    # https://github.com/soimort/translate-shell
    wget https://raw.githubusercontent.com/soimort/translate-shell/gh-pages/trans && \
    chmod +x trans && \
    mv trans /bin/trans

ENTRYPOINT ["trans"]
