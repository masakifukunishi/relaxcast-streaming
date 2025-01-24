FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    icecast2 \
    liquidsoap \
    && rm -rf /var/lib/apt/lists/*

COPY icecast.xml /etc/icecast2/icecast.xml

COPY radio.liq /app/radio.liq

# # musicディレクトリをコンテナ内で参照するためのVOLUME設定(任意)
# # 実際のファイルはコンテナ起動時にマウントされます
# VOLUME /app/music

EXPOSE 8000

# Start icecast2 and liquidsoap
CMD ["/bin/sh", "-c", "icecast2 -n -c /etc/icecast2/icecast.xml & liquidsoap /app/radio.liq"]
