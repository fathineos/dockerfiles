# Glances Dockerfile based on Alpine OS
# https://github.com/nicolargo/glances

FROM alpine:3.19

RUN apk add --update glances

# Define working directory.
WORKDIR /glances

# Define default command.
CMD python3 -m glances -C /glances/conf/glances.conf $GLANCES_OPT
