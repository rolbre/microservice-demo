#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Build Services
docker build --tag xcompany/service-registry:latest ./service-registry/xbuild
# docker build --tag xcompany/api-gateway:latest ./api-gateway/xbuild

# Build Sources
dotnet build ../src/ApiGateway/src/ --output ../../../../infrastructure/api-gateway/xbuild/rootfs/opt/attain/worker/api-gateway/

# Start Infrastructure
docker-compose -f ./service-registry/docker-compose.yml up
# docker-compose -f ./api-gateway/docker-compose.yml up
