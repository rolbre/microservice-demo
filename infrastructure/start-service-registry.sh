#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Build Service
docker build --tag xcompany/service-registry:latest ./service-registry/xbuild

# Start Service
docker-compose -f ./service-registry/docker-compose.yml up
