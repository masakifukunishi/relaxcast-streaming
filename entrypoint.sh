#!/bin/sh
envsubst < /etc/icecast2/icecast.xml.template > /etc/icecast2/icecast.xml
icecast2 -n -c /etc/icecast2/icecast.xml & 
liquidsoap /app/radio.liq