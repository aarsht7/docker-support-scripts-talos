export ID=`docker ps -aqf "name=talos-simulation"`
xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $ID `
docker start talos-simulation
docker exec -it talos-simulation bash
