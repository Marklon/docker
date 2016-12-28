#! /bin/bash
# Docker setup with script
# Install with the script
$ sudo yum update
$ curl -fsSL https://get.docker.com/ | sh
$ sudo systemctl enable docker
$ sudo systemctl start docker
# Verify docker is installed correctly by running a test image in a container.
$ sudo systemctl start docker
