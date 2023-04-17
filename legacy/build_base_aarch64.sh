#!/bin/bash -ex

DOCKERTAG=tisdk_base_aarch64
DOCKERFILE=Dockerfile.base.aarch64

REPO_LOCATION=arm64v8

# Build docker image
DOCKER_BUILDKIT=1 docker build \
    -t $DOCKERTAG \
    --build-arg REPO_LOCATION=$REPO_LOCATION \
    -f $DOCKERFILE .

