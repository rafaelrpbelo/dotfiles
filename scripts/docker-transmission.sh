#!/bin/bash

DIRECTORY='/home/torrent/download'

for dir in \
        "/home/torrent/download" \
        "/home/torrent/incomplete" \
        "/home/torrent/config"
do
  if ! [ -e "$dir" ]; then
    echo "Directory $dir must exists!"
    exit 1
  fi
done

if ! [ -x "$(command -v docker)" ]; then
  echo "Docker must be installed!"
  exit 1
fi

docker run \
  --detach=true \
  -v /etc/localtime:/etc/localtime:ro \
  -v /home/torrent:/transmission \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  jess/transmission

echo "Go to: http://localhost:9091"
