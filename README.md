# dind

docker run --privileged --name base-docker -d docker:17.06.0-dind

docker run -ti --link base-docker:docker  docker:17.06.0 sh

docker run --rm  --privileged -v "$PWD:$PWD" -w="$PWD"  -e DOCKER_HOST=tcp://172.20.128.2:2375 docker/compose:1.24.0 up -d
