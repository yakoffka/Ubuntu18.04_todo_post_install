#!/bin/bash

echo "--------------------------------------------------------------------------------"
echo "---------------   Welcome to PostInstall 18.04 SoftWare part   -----------------"
echo "--------------------------------------------------------------------------------"


install_SoftWare()
{
    sudo apt install -y gimp

    sudo apt install -y inkscape

    sudo snap install slack --classic

    sudo apt install -y ktouch
}
install_SoftWare
