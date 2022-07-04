#!/bin/bash
sudo apt-get update -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
cd /home/
sudo git clone https://github.com/gomesIgor21/events-back.git
cd events-back
#sudo git clone https://github.com/DiegoLeal/api-event.git
#cd api-event
sudo apt  install docker-compose -y
sudo docker-compose up --build
sudo apt-get install -y apache2
echo 'Hello from Terraform' > /var/www/html/index.html
service httpd start

