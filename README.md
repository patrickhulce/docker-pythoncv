# docker-pythoncv
[![Build Status](https://travis-ci.org/patrickhulce/docker-pythoncv.svg?branch=master)](https://travis-ci.org/patrickhulce/docker-pythoncv)

Ubuntu-based docker image setting up python with tensorflow, opencv, numpy, and matplotlib.

## Usage

```
FROM patrickhulce/pythoncv:latest

ENV TF_MODEL_DIR /var/lib/tensorflow
```
