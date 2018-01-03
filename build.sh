#!/usr/bin/env bash

docker build  \
  --force-rm \
  --no-cache \
  --compress \
  -t rms1000watt/jenkins-docker:latest \
  Dockerfiles/jenkins

docker build  \
  --force-rm \
  --no-cache \
  --compress \
  -t rms1000watt/dcind-git:latest \
  Dockerfiles/dcind
