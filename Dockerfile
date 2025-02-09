FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    icecast2 \
    liquidsoap \
    gettext-base \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -r -s /bin/false streaming \
    && mkdir -p /var/log/icecast2 \
    && chown -R streaming:streaming /var/log/icecast2 \
    && chown -R streaming:streaming /etc/icecast2

COPY --chown=streaming:streaming icecast.xml /etc/icecast2/icecast.xml.template
COPY --chown=streaming:streaming radio.liq /app/radio.liq
COPY --chown=streaming:streaming entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER streaming
EXPOSE 8000

CMD ["/entrypoint.sh"]