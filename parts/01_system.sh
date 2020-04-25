#!/bin/bash

install_system()
{
    echo ""
    echo "    -part 01: system-"

    sudo apt update
    sudo apt upgrade -y
    sudo apt clean


    # установка Yaru/Communitheme
    snap install communitheme

    # GNOME Shell extensions
    sudo apt-get install chrome-gnome-shell

    # установка русской локали для изменения региона. Возможно не понадобится
    sudo apt-get install -y language-pack-ru

    # добавление в контекстное меню пункта "New Document" (+ over много шаблонов)
    cp -R src/Templates/* ~/Templates

    # indicator-sysmonitor
    sudo apt-get -y install curl git gir1.2-appindicator3-0.1
    sudo apt-get -y install python3-psutil # or sudo pip3 install -U psutil
    git clone https://github.com/Super-Tree/indicator-sysmonitor.git tmp/indicator-sysmonitor
    cd tmp/indicator-sysmonitor
    sudo make install
    # nohup indicator-sysmonitor &

    # uninstall indicator-sysmonitor
    # cd tmp/indicator-sysmonitor
    # sudo make uninstall
}

install_system