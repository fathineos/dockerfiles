FROM alpine:3.10

RUN \
  apk update && \
  apk add libcaca python3 && \
  apk add --virtual=build git && \
  git clone https://github.com/fathineos/sclack.git && \
  cd sclack && \
  pip3 install --no-cache-dir -r requirements.txt && \
  apk del --purge build

VOLUME /root
WORKDIR /sclack

ENTRYPOINT ["./app.py"]
