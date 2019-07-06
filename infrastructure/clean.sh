#!/usr/bin/env bash
# -*- coding: utf-8 -*-

docker container rm xcompany/service-registry:latest

docker container prune -f
docker image prune -f
docker volume prune -f
docker network prune -f
