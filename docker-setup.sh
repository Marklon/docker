#! /bin/bash
# This script will install Docker along with Docker-Compose
# Install with the script
 sudo yum update
 curl -fsSL https://get.docker.com/ | sh
 sudo systemctl enable docker
 sudo systemctl start docker
# Verify docker is installed correctly by running a test image in a container.
 sudo systemctl start docker
# Docker-Compose setup with script

 curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o \
 /usr/local/bin/docker-compose

# Apply executable permissions to the binary:
 chmod +x /usr/local/bin/docker-compose
# Test the installation.
 docker-compose --version
 docker-compose version: 1.9.0
