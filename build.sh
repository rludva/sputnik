#!/bin/bash

podman build -t sputnik:latest .
podman images | grep "localhost/sputnik"
