#!/bin/bash

install_laravel_homestead()
{
    echo ""
    echo "    -part 07: laravel_homestead-"


    echo "установка Oracle VirtualBox"
    # https://www.virtualbox.org/wiki/Linux_Downloads
    # добавление официального репозитория Oracle VirtualBox
    sudo sh -c 'echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" >> /etc/apt/sources.list.d/virtualbox.list'
    # загрузка и добавление открытого ключа Oracle (combine downloading and registering)
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
    # install VirtualBox
    sudo apt-get update
    sudo apt-get install -y virtualbox-6.1



    # install vagrant
    echo "установка vagrant"
    cd ../temp/
    curl -O https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.deb
    sudo dpkg -i vagrant_2.2.7_x86_64.deb
    cd ../parts/


    echo "установка homestead"
    vagrant box add laravel/homestead --provider virtualbox
    sudo rm -rf ~/Homestead
    git clone https://github.com/laravel/homestead.git ~/Homestead
    cd ~/Homestead
    git checkout v8.0.1
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
