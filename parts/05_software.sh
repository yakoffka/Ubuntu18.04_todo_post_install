#!/bin/bash

install_SoftWare() {
  part='part 05. software'
  printf "\n\n\n\n    - ${part} -\n"

  printf "\n\n --- ${part}: установка gimp\n"
  sudo apt install -y gimp

  printf "\n\n --- ${part}: установка inkscape\n"
  sudo apt install -y inkscape

  #printf "\n\n --- ${part}: установка slack\n"
  #sudo snap install slack --classic

  printf "\n\n --- ${part}: установка filezilla\n"
  sudo apt install filezilla

  printf "\n\n --- ${part}: установка ktouch\n"
  sudo apt install -y ktouch
}

install_SoftWare
