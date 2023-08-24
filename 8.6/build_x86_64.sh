#!/bin/bash -ex

DOCKERTAG=tisdk_x86_64:8.6
DOCKERFILE=Dockerfile.x86_64

REPO_LOCATION=`docker inspect --format='{{.Os}}/{{.Architecture}}' tisdk_base_x86_64`

# Build docker image
BUILDKIT_PROGRESS=plain DOCKER_BUILDKIT=1 docker build \
    -t $DOCKERTAG \
    --build-arg REPO_LOCATION=$REPO_LOCATION \
    --build-arg MAX_PARALLEL_BUILDS=20 \
    -f $DOCKERFILE .

bash extract_libs_x86_64.sh
