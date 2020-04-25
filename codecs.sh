#!/bin/bash

echo "--------------------------------------------------------------------------------"
echo "----------------   Welcome to PostInstall 18.04 Codecs part   ------------------"
echo "--------------------------------------------------------------------------------"


# установка мультимедиа кодеков и шрифтов
  sudo apt install -y ubuntu-restricted-extras
  sudo apt install -y libavcodec-extra
  sudo apt install -y libdvd-pkg


echo "The end of Codecs part"