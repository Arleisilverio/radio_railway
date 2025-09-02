#!/bin/bash
set -e

# Railway define a porta em $PORT, precisamos injetar no Icecast
sed -i "s/{{PORT}}/${PORT}/g" /etc/icecast2/icecast.xml

exec icecast2 -c /etc/icecast2/icecast.xml -n

