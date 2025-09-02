FROM debian:stable-slim

# Instala o Icecast
RUN apt-get update && apt-get install -y icecast2 && rm -rf /var/lib/apt/lists/*

# Copia os arquivos de configuração e entrypoint
COPY icecast.xml /etc/icecast2/icecast.xml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expõe a porta que o Railway usa (irá mapear automaticamente)
EXPOSE 8000

CMD ["/entrypoint.sh"]

