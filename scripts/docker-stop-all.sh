#!/bin/bash

SERVICE="dockerd"

if pgrep -x "$SERVICE" >/dev/null
then
  CONTAINER_IDS=`docker ps | sed "1d" | cut -d " " -f 1`

  if [ ! -z "$CONTAINER_IDS" ]
  then
    docker stop $CONTAINER_IDS
  else
    echo "None container is running."
  fi
else
  echo "Is it docker running?"
fi
