#!/bin/bash

install_sshfs_part() {
  part='part 06. sshfs'
  printf "\n\n\n\n    - ${part} -\n"

  printf "\n\n --- ${part}: установка sshfs\n"
  sudo apt install -y sshfs
  sshfs --version

  dir="/media/$USER/servers"
  printf "\n\n --- ${part}: создание директории '$dir' для монтирования удаленной файловой системы\n"
  sudo mkdir "$dir"

  printf "\n\n --- ${part}: смена владельца директории '$dir'\n"
  sudo chown "$USER":"$USER" "$dir"
}

install_sshfs_part
