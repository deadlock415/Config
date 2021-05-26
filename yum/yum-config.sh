#! /bin/bash
echo "Online Package Of BaseOS,Appstream,Extras & Cent OS Plus"
sleep 3
cp ./rhel8dvd.repo /etc/yum.repos.d/
cp ./extra.repo /etc/yum.repos.d/
yum install epel-release 
yum repolist
