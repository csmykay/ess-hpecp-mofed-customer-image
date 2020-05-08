#!/bin/bash
#https://docs.docker.com/engine/reference/commandline/build/
DATE=$(date +%Y-%m-%d_%H:%M:%S)
VERSION=1.0
#if [ -z $CURRENT ]; then
#	CURRENT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
#fi
docker build --build-arg BUILD_DATE=$DATE --build-arg BUILD_VERSION=$VERSION --no-cache=true --rm -f Dockerfile -t ess-hpecp-mofed-customer-image:$VERSION .
docker tag ess-hpecp-mofed-customer-image:$VERSION ess-hpecp-mofed-customer-image:latest
#docker tag ess-hpecp-mofed-customer-image:latest csmykay/ess-hpecp-mofed-customer-image:latest
#docker login
#docker push ess-hpecp-mofed-customer-image:latest 