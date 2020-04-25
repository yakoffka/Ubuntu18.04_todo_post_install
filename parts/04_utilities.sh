#!/bin/bash

install_utilities()
{
    echo ""
    echo "    -part 04: utilities-"

    # установка утилит
    sudo apt install -y mc
    sudo apt install -y curl
    sudo apt install -y apt-transport-https
    sudo apt install -y git
}

install_utilities