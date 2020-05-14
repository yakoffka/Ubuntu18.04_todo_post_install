#!/bin/bash

install_system() {
  part='part 01. system'
  printf "\n\n\n\n    - ${part} -\n"
  # sleep 500

  printf "\n\n --- ${part}: установка мультимедиа кодеков и шрифтов\n"
  sudo apt install -y ubuntu-restricted-extras
  sudo apt install -y libavcodec-extra
  sudo apt install -y libdvd-pkg
  sudo dpkg-reconfigure libdvd-pkg
  sudo apt autoremove -y

  printf "\n\n --- ${part}: обновление компонентов системы\n"
  sudo apt update
  sudo apt upgrade -y
  sudo apt clean

  printf "\n\n --- ${part}: установка утилит\n"
  sudo apt install -y mc
  sudo apt install -y curl
  sudo apt install -y apt-transport-https
  sudo apt install -y git

  printf "\n\n --- ${part}: установка Yaru/Communitheme\n"
  sudo snap install communitheme
  # https://www.systutorials.com/how-to-enable-user-themes-in-ubuntu-18-04/

  printf "\n\n --- ${part}: GNOME Shell extensions\n"
  sudo apt install -y chrome-gnome-shell
  sudo apt install -y gnome-shell-extensions

  printf "\n\n GNOME tweak-tool\n"
  sudo apt install -y gnome-tweak-tool

  printf "\n\n --- ${part}: установка русской локали для изменения региона. Возможно не понадобится\n"
  sudo apt install -y language-pack-ru

  printf "\n\n --- ${part}: добавление в контекстное меню пункта 'New Document' (+ over много шаблонов)\n"
  sudo cp -R src/Templates/* ~/Templates

  #printf "\n\n --- ${part}: indicator-sysmonitor\n"
  #sudo apt install -y make curl git gir1.2-appindicator3-0.1
  #sudo apt install -y python3-psutil # or sudo pip3 install -U psutil
  #git clone https://github.com/Super-Tree/indicator-sysmonitor.git temp/indicator-sysmonitor
  #cd temp/indicator-sysmonitor
  #sudo make install
  # nohup indicator-sysmonitor &
  #cd ..

  # uninstall indicator-sysmonitor
  # cd tmp/indicator-sysmonitor
  # sudo make uninstall
  
}

install_system ${1}
