FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y icecast2 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY icecast.xml.template /etc/icecast2/icecast.xml
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
