#!/bin/bash

#
# Build image for this application..
#

DOCKERFILE="Dockerfile.ubi7"
podman build -f "$DOCKERFILE" -t localhost/sputnik:latest .
