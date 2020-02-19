# Glances Dockerfile based on Alpine OS
# https://github.com/nicolargo/glances

FROM alpine:3.11

RUN apk add --update python3 py3-psutil

RUN apk add --update --virtual tmp_deps py3-pip && \
    pip3 install --no-cache 'glances[docker]==3.1.3' && \
    apk del tmp_deps

# Define working directory.
WORKDIR /glances

# Define default command.
CMD python3 -m glances -C /glances/conf/glances.conf $GLANCES_OPT
