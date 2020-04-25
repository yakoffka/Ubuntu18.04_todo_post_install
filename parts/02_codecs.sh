#!/bin/bash

install_codecs()
{
    echo ""
    echo "    -part 02: codecs-"

    # установка мультимедиа кодеков и шрифтов
    sudo apt install -y ubuntu-restricted-extras
    sudo apt install -y libavcodec-extra
    sudo apt install -y libdvd-pkg
}

install_codecs