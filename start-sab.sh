#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/sabnzbd.conf

docker run -d --name=$DOCKER_NAME --net=host \
  -v /etc/localtime:/etc/localtime:ro \
  -v $SAB_CONFIG:/config \
  -v $SAB_DATA:/data \
  -v /storage:/downloads \
  --restart=always \
  $DOCKER_IMAGE


