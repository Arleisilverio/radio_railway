#!/bin/sh
set -e

# Gera o arquivo de configuração a partir do template
envsubst < /app/icecast.xml.template > /app/icecast.xml

# Inicia o Icecast
exec icecast -c /app/icecast.xml
