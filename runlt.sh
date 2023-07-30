#!/bin/bash


# docker run --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --env="DISPLAY" --net=host -it light-table /bin/bash

# docker run --env="DISPLAY" --net=host -it light-table /bin/bash

# See: https://github.com/rodmxw11/dockerfiles/blob/master/chromium/Dockerfile

# docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --user="$(id --user):$(id --group)" light-table /bin/bash

docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  light-table /bin/bash


#docker run -it \
#	--net host \
#	--cpuset-cpus 0 \
#	--memory 512mb \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	-v /dev/shm:/dev/shm \
#       light-table /bin/bash

