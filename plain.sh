#!/usr/bin/env bash

BUILD_DIR=build
mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}
cmake ../ -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

pvs-studio-analyzer analyze -o project_plain.log -l ~/PVS-Studio.lic --disableLicenseExpirationCheck
plog-converter -t errorfile  project_plain.log -w --cerr --excludedCodes Renew

echo error: $?
