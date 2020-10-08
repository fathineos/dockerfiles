#!/bin/sh

echo "HiddenServicePort 80 ${REDIRECT}" >> /etc/torrc
tor -f /etc/torrc
