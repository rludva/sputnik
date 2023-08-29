#!/bin/bash

#
# Build image for this application..
#

IMAGE_HOST="localhost"
IMAGE_NAME="sputnik"
IMAGE_TAG="1.03"

DOCKERFILE="Dockerfile.ubi8"
podman build -f "$DOCKERFILE" -t "$IMAGE_HOST"/"$IMAGE_NAME":"$IMAGE_TAG" .
