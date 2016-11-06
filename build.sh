#!/bin/sh

TAG=${1:-pythoncv}
docker build -t $TAG .
