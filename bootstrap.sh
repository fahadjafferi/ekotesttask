#!/usr/bin/env bash

#Update sources
sudo apt-get update -y

# Install Docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

sudo apt-get install docker-ce -y

# Add the current user to the docker group

sudo usermod -a -G docker $USER
sudo reboot

# Install Jenkins Docker Image and Run jenkins
docker pull jenkins
# directory need to be separated with the admin ownership to keep the Jenkins home:
chown 1000 $PWD/jenkins

docker run -d -p 49001:8080 -v $PWD/jenkins:/var/jenkins_home:z -t jenkins
