#!/bin/bash

echo "--------------------------------------------------------------------------------"
echo "---------------   Welcome to PostInstall 18.04 Utilities part   ----------------"
echo "--------------------------------------------------------------------------------"

# установка утилит
  sudo apt install -y mc
  sudo apt install -y curl
  sudo apt install -y apt-transport-https
  sudo apt install -y git
    git config --global user.email "yagithub@mail.ru"
    git config --global user.name "yakoffka"

echo "The end of Utilities part"