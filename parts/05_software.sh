#!/bin/bash

install_SoftWare()
{
    echo ""
    echo "    -part 05: software-"


    sudo apt install -y gimp

    sudo apt install -y inkscape

    sudo snap install slack --classic

    sudo apt install -y ktouch
}

install_SoftWare
