#!/bin/bash

echo "** Processing bootstrap.sh"

sudo yum update -y
sudo yum install -y git wget net-tools

echo "** Processing bootstrap - Complete"
