#!/bin/bash
#Author: Gihan De Silva

echo "Update system packages"
sudo apt-get update

echo "Add the Ansible PPA with system packages"
sudo apt-add-repository ppa:ansible/ansible && apt-get update

echo "Install tree package"
sudo apt-get install tree

echo ""
echo "Install Ansible on Ubuntu 14.04/ 16.04"
sudo apt-get install ansible

echo ""
echo "Ansible Installed Version"
ansible --version 

echo ""
echo "Setup SSH Keys"
ssh-keygen -b 4048 -t rsa -C "root@$HOSTNAME"

echo ""
echo "Add the public key as shown, for related servers to connect SSH with ansible server"
echo "/root/.ssh"
echo ""
cat /root/.ssh/id_rsa.pub
