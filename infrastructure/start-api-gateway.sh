#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Build Sources
dotnet publish --output ../../../../infrastructure/api-gateway/xbuild/rootfs/opt/attain/worker/api-gateway/ -c Release ../src/ApiGateway/src/

# Build Service
docker build --tag xcompany/api-gateway:latest ./api-gateway/xbuild

# Start Service
docker-compose -f ./api-gateway/docker-compose.yml up
