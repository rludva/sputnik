#!/bin/bash

#
# Run image for this application..
#

podman run --rm -it -p 8080:8080 localhost/sputnik:latest
