#!/bin/bash
set -e

# Substitui as variáveis de ambiente no template de configuração
envsubst < /etc/icecast2/icecast.xml > /etc/icecast2/icecast.xml

# Inicia o Icecast
icecast2 -n -c /etc/icecast2/icecast.xml
