FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    icecast2 \
    liquidsoap \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -r -s /bin/false streaming \
    && mkdir -p /var/log/icecast2 \
    && chown -R streaming:streaming /var/log/icecast2

COPY --chown=streaming:streaming icecast.xml /etc/icecast2/icecast.xml
COPY --chown=streaming:streaming radio.liq /app/radio.liq

USER streaming
EXPOSE 8000

# Start icecast2 and liquidsoap
CMD ["/bin/sh", "-c", "icecast2 -n -c /etc/icecast2/icecast.xml & liquidsoap /app/radio.liq"]
# CMD ["/bin/sh", "-c", "icecast2 -n -c /etc/icecast2/icecast.xml"]