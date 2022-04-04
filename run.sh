docker run --privileged -it \
 --volume="/tmp/.X11-unix:/tmp/.X11-unix" \
 --volume="/home/$USER:/home/host" \
 --device="/dev/dri:/dev/dri" \
 --env="DISPLAY=$DISPLAY" \
 --env="QT_X11_NO_MITSHM=1" \
 --env="TERM=xterm-256color" \
 -h talos-sim.local \
 --name "talos-simulation" \
1at7/talos-simulation:v.1.0
