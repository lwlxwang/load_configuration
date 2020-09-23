# Runs the container, exports the configuration files,
# stops and deletes the container.

#!/bin/bash

container=load_configuration

docker run -dit --name $container load_configuration:latest
docker cp $container:/output/. docker_output
docker stop $container
docker rm $container