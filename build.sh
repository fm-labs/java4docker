#!/bin/bash

BUILD_ARGS="--platform=linux/amd64,linux/arm64"
REPO_NAME=fmlabs/java4docker


#####
# OPENJDK
#####

# OpenJDK 21 Debian-Bookworm
docker buildx build $BUILD_ARGS \
  -f ./openjdk21/Dockerfile \
  -t ${REPO_NAME}:openjdk21 \
  ./openjdk21

# OpenJDK 23 Debian-Bookworm
docker buildx build $BUILD_ARGS \
  -f ./openjdk23/Dockerfile \
  -t ${REPO_NAME}:openjdk23 \
  ./openjdk23


# OpenJDK 21 Alpine
docker buildx build $BUILD_ARGS \
  -f ./openjdk21/Dockerfile-alpine \
  -t ${REPO_NAME}:openjdk21-alpine \
  ./openjdk21

# OpenJDK 23 Alpine
docker buildx build $BUILD_ARGS \
  -f ./openjdk23/Dockerfile-alpine \
  -t ${REPO_NAME}:openjdk23-alpine \
  ./openjdk23



#####
# ORACLE JDK
#####

# OracleJDK 21
docker buildx build $BUILD_ARGS \
  -f ./oraclejdk21/Dockerfile \
  -t ${REPO_NAME}:oraclejdk21 \
  ./oraclejdk21

# OracleJDK 23
docker buildx build $BUILD_ARGS \
  -f ./oraclejdk23/Dockerfile \
  -t ${REPO_NAME}:oraclejdk23 \
  ./oraclejdk23