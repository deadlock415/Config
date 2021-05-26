#! /bin/bash 
cp ./docker-ce.repo  /etc/yum.repos.d/

yum install -y yum-utils
yum remove docker docker-common docker-selinux docker-engine-selinux docker-engine docker-ce
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce
#to solve error abt apt
yum install libseccomp
systemctl start docker.service
systemctl enable docker.service
docker info
