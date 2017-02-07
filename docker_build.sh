#!/bin/bash
DOCKER_IMAGE_VERSION=latest
DOCKER_IMAGE_NAME=marhan/rpi-java8
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

build() {
  docker build -t $DOCKER_IMAGE_TAGNAME .

  [ $? != 0 ] && \
    error "Docker image build failed !" && exit 100
}