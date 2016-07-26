#!/bin/bash

# https://docs.docker.com/engine/installation/linux/centos/

sudo yum update -y
curl -fsSL https://get.docker.com/ | sh
sudo service docker start

# user must logout before takes affect to run 'docker ps' 
sudo usermod -aG docker vagrant

sudo chkconfig docker on

# docker run hello-world