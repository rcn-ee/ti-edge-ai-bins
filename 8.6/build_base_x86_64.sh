#!/bin/bash -ex

DOCKERTAG=tisdk_base_x86_64
DOCKERFILE=Dockerfile.base.x86_64

REPO_LOCATION=amd64

# Build docker image
DOCKER_BUILDKIT=1 docker build \
    -t $DOCKERTAG \
    --build-arg REPO_LOCATION=$REPO_LOCATION \
    -f $DOCKERFILE .

