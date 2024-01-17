#!/bin/sh

USER=vagrant
PASSWORD=vagrant

# wget https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_linux_amd64.zip
# unzip packer_1.3.4_linux_amd64.zip -d /tmp/packer
# sudo mv /tmp/packer/packer /usr/local/
# export PATH="$PATH:/usr/local/packer"
# source /etc/environment

# add addresses to /etc/hosts 
echo "10.0.1.10 ansible.joystopper.infra" | sudo tee -a /etc/hosts 
echo "10.0.1.11 web1.joystopper.infra" | sudo tee -a /etc/hosts 
echo "10.0.1.12 web2.joystopper.infra" | sudo tee -a /etc/hosts 


echo " " | sudo tee -a /etc/ansible/hosts
echo "[all]" | sudo tee -a /etc/ansible/hosts
echo "web1.joystopper.infra" | sudo tee -a /etc/ansible/hosts 
echo "web2.joystopper.infra" | sudo tee -a /etc/ansible/hosts 
 
cat /etc/ansible/hosts

cp /home/vagrant/.ssh/id_rsa.pub /vagrant/keys/id_rsa.pub






