#!/bin/sh

DOCKER_REPO=${1}
BRANCH=${2}
BUILD=${3}

docker login -u $DOCKER_USER -p $DOCKER_PASS

docker tag $BUILD $DOCKER_REPO:$BRANCH
docker push $DOCKER_REPO:$BRANCH

if [ "$BRANCH" == "master" ]; then
  docker tag $BUILD $DOCKER_REPO:latest
  docker push $DOCKER_REPO:latest
fi
