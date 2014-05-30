#!/bin/bash

# Exit on first error
set -e

# Kill background processes on exit
trap 'echo KILLING && kill -9 $(jobs -p)' SIGINT SIGTERM EXIT

# Start docker daemon
docker -d &
sleep 1

# Use docker
docker pull busybox
docker run busybox /bin/echo hello world