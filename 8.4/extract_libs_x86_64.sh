#!/bin/sh
PSDK_RTOS_VER=08_04_00_06
docker run --name temp-tisdk tisdk_x86_64:8.4 /bin/true
docker cp temp-tisdk:/opt/vx_app_${PSDK_RTOS_VER}.tar.xz .
docker cp temp-tisdk:/opt/tivision_apps_${PSDK_RTOS_VER}.tar.xz .
docker cp temp-tisdk:/opt/firmware_${PSDK_RTOS_VER}.tar.xz .
docker rm temp-tisdk
