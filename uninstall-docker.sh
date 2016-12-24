#! /bin/bash
# Uninstall You can uninstall the Docker software with yum.
$ yum list installed | grep docker
# Remove the package
$ sudo yum -y remove docker-engine.x86_64
$ sudo yum -y remove docker-engine-selinux.noarch
# To delete all images, containers, and volumes, run the following command:
$ rm -rf /var/lib/docker


