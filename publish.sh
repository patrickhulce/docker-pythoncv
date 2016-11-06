#!/bin/sh

DOCKER_REPO=${1}
BRANCH=${2}
BUILD=${3}

docker login -e $DOCKER_EMAIL \
  -u $DOCKER_USER \
  -p $DOCKER_PASS

docker tag $BUILD $DOCKER_REPO:$BRANCH

if [ "$BRANCH" == "master"]; then
  docker tag $BUILD $DOCKER_REPO:latest
fi

docker push $DOCKER_REPO
