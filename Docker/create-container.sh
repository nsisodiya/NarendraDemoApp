#!/usr/bin/env bash

CONTAINER_NAME=reactnativesetup2
docker \
    run \
    -tdi \
    -p 8081:8081/tcp \
    -v $(pwd):/home/dev/app \
    --name $CONTAINER_NAME maximed/docker-react-native \
    /bin/bash

#--net host \
#--rm \
#-e DISPLAY="$DISPLAY" \
#-v /tmp/.X11-unix:/tmp/.X11-unix \
#-v /dev/bus/usb:/dev/bus/usb \
#-v /home/$USER/.android:/home/dev/.android \