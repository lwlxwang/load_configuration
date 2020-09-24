# Runs the container, exports the configuration files,
# stops and deletes the container.

#!/bin/bash

container=load_configuration

docker run -it --name $container \
    -v $(pwd)/configurations:/configurations \
    $container
docker cp $container:/output/. docker_output
docker stop $container
docker rm $container