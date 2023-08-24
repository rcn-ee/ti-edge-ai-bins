#!/bin/sh
PSDK_RTOS_VER=08_06_01_03
docker run --name temp-tisdk tisdk_x86_64:8.6 /bin/true
docker cp temp-tisdk:/opt/vx_app_${PSDK_RTOS_VER}.tar.xz .
docker cp temp-tisdk:/opt/tivision_apps_${PSDK_RTOS_VER}.tar.xz .
docker cp temp-tisdk:/opt/firmware_${PSDK_RTOS_VER}.tar.xz .
docker rm temp-tisdk
