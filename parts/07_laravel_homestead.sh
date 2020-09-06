#!/bin/bash

install_laravel_homestead() {
  part='part 07. laravel_homestead'
  printf "\n\n\n\n    - ${part} -\n"

  printf "\n\n --- ${part}: установка Oracle VirtualBox\n"
  # https://www.virtualbox.org/wiki/Linux_Downloads
  # добавление официального репозитория Oracle VirtualBox
  sudo sh -c 'echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" >> /etc/apt/sources.list.d/virtualbox.list'
  # загрузка и добавление открытого ключа Oracle (combine downloading and registering)
  wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
  # install VirtualBox
  sudo apt update
  sudo apt install -y virtualbox-6.1

  # install vagrant
  printf "\n\n --- ${part}: установка vagrant\n"
  cd temp/
  curl -O https://releases.hashicorp.com/vagrant/2.2.10/vagrant_2.2.10_x86_64.deb
  sudo dpkg -i vagrant_2.2.10_x86_64.deb
  cd ..

  printf "\n\n --- ${part}: установка laravel/homestead\n"
  vagrant box add laravel/homestead --provider virtualbox
  sudo rm -rf ~/Homestead
  git clone https://github.com/laravel/homestead.git ~/Homestead
  cd ~/Homestead
  # git checkout v8.0.1
  git checkout release
  bash init.sh

  #    # uninstall homestead
  #    sudo rm -rf ~/Homestead
  #
  #    # uninstall vagrant
  #    sudo rm -rf /opt/vagrant
  #    sudo rm -f /usr/bin/vagrant
  #    sudo rm -rf ~/.vagrant.d
  #
  #    # uninstall virtualbox
  #    sudo apt purge -y virtualbox-6.1
  #    sudo apt autoremove -y
  #    sudo rm -f /etc/apt/sources.list.d/virtualbox.list
}

install_laravel_homestead
