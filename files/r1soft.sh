#!/bin/bash
sudo su -c 'echo "[r1soft]
name=R1Soft Repository Server
baseurl=http://repo.r1soft.com/yum/stable/x86_64/
enabled=1
gpgcheck=0" > /etc/yum.repos.d/r1soft.repo'
sudo yum install serverbackup-enterprise-agent -y
sudo serverbackup-setup --test-connection
sudo yum install kernel-devel -y
sudo serverbackup-setup --get-module