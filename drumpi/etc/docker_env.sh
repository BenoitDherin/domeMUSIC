MACHINE=helioz
DRIVER=virtualbox

(docker-machine ls | grep $MACHINE) || docker-machine create --driver $DRIVER $MACHINE
docker-machine start $MACHINE
eval "$(docker-machine env $MACHINE)"
