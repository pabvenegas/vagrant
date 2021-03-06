#!/bin/bash

# https://docs.docker.com/compose/install/

echo "** Processing install-dockercompose.sh"

curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "** Processing install-dockercompose.sh - Complete"