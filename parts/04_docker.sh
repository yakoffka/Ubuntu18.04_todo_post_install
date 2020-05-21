#!/bin/bash

docker_install() {
  part='part 04. docker'
  printf "\n\n\n\n    - ${part} -\n"

  #https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

  #Update the apt package index and install packages to allow apt to use a repository over HTTPS:
  sudo apt-get update

  sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

  #Add Docker’s official GPG key:
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

  sudo apt-key fingerprint 0EBFCD88
  #pub   rsa4096 2017-02-22 [SCEA]
  #      9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
  #uid           [ unknown] Docker Release (CE deb) <docker@docker.com>
  #sub   rsa4096 2017-02-22 [S]

  #Use the following command to set up the stable repository.
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

  #Install Docker Engine
  sudo apt-get update
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io

  #  Verify that Docker Engine is installed correctly by running the hello-world image.
  $ sudo docker run hello-world
}

postinstall_linux() {
  #Post-installation steps for Linux
  #https://docs.docker.com/engine/install/linux-postinstall/

  #To create the docker group and add your user:
  sudo groupadd docker
  sudo usermod -aG docker "${USER}"
  #newgrp docker
  #docker run hello-world

  #  sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
  #  sudo chmod g+rwx "$HOME/.docker" -R

  #Configure Docker to start on boot
  sudo systemctl enable docker

  #Docker is automatically configured to start on boot using upstart. To disable this behavior, use the following command:
  #echo manual | sudo tee /etc/init/docker.override

  #chkconfig🔗
  # sudo chkconfig docker on
}

docker_compose_install() {
  #https://docs.docker.com/compose/install/

  #Run this command to download the current stable release of Docker Compose:
  sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

  sudo chmod +x /usr/local/bin/docker-compose

  sudo docker-compose --version
  #docker-compose version 1.25.5, build 1110ad01
}

docker_install
postinstall_linux
docker_compose_install
