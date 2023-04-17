#!/bin/bash -ex

DOCKERTAG=tisdk_aarch64:8.2
DOCKERFILE=Dockerfile.aarch64

REPO_LOCATION=`docker inspect --format='{{.Os}}/{{.Architecture}}' tisdk_base_aarch64`

# Build docker image
DOCKER_BUILDKIT=1 docker build \
    -t $DOCKERTAG \
    --build-arg REPO_LOCATION=$REPO_LOCATION \
    --build-arg MAX_PARALLEL_BUILDS=20 \
    --build-arg PSDK_RTOS_VER=08_02_00_06 \
    --build-arg TIDL_LIB_PKG=tidl_j721e_08_02_00_11 \
    --build-arg OSRT_TAG=TIDL_PSDK_8.2 \
    --build-arg DLR_TAG=TI.8.2.0 \
    --build-arg TENSORFLOW_TAG=TIDL_PSDK_8.2 \
    --build-arg ROBOTICS_SDK_TAG=REL.08.02.00.00 \
    --build-arg EDGEAI_APPS_TAG=REL.PSDK.LINUX.SK.TDA4VM.08.02.01 \
    --build-arg EDGEAI_GST_PLUGINS_TAG=release-0.6.0 \
    --build-arg EDGEAI_TIOVX_MODULES_TAG=release-8.2 \
    --build-arg FLATBUFFERS_VERSION=v1.12.0 \
    --build-arg PROTOBUF_VER=3.11.3 \
    -f $DOCKERFILE .

