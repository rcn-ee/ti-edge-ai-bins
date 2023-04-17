#!/bin/sh
DLRT_LIB_VER=08_02
docker run --name temp-tisdk-aarch64 tisdk_aarch64:8.2 /bin/true
mkdir -p ./dlruntime
docker cp temp-tisdk-aarch64:/opt/tensorflow ./dlruntime/tensorflow
docker cp temp-tisdk-aarch64:/opt/onnxruntime ./dlruntime/onnxruntime
docker cp temp-tisdk-aarch64:/opt/neo-ai-dlr ./dlruntime/neo-ai-dlr
docker rm temp-tisdk-aarch64
tar cJf dlruntime_${DLRT_LIB_VER}.tar.xz dlruntime
rm -rf dlruntime
