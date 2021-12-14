# ndn-docker-image
The docker image of basic ndn development environment (ndn-cxx + NFD).

## Build
To build the image locally, you can use

```shell
docker build --tag ndn-basic:0.1 .
```

## Run
To start the image, use the commands

```shell
docker container create -it --name ndn-container ndn-basic:0.1
docker container start ndn-container
docker container exec -it ndn-container /bin/bash
```
## Stop

```shell
docker stop ndn-container
```
