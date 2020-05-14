#!/bin/bash

install_private_part() {
  part='part 09. private'
  printf "\n\n\n\n    - ${part} -\n"


  printf "\n\n --- ${part}: git config\n"
  git config --global user.email "yagithub@mail.ru"
  git config --global user.name "yakoffka"


  printf "\n\n --- ${part}: создание директории для монтирования удаленной файловой системы\n"
  directories=(
    ~/projects/
    ~/projects/remote
    ~/projects/remote/yakoffka
    ~/projects/remote/ulibAsya
    ~/projects/remote/kanatkom
  )
  for dir in ${directories[*]}; do
    echo "создание директории '${dir}' с владельцем '${USER}'"
    sudo mkdir -p ${dir}
    sudo chown ${USER}:${USER} ${dir}
  done


  printf "\n\n --- ${part}: замена звука тревоги\n"
  sudo cp -f src/stereo/bell.ogg /usr/share/sounds/ubuntu/stereo/bell.ogg
  # !!! не работает для communitheme!!!


  printf "\n\n --- ${part}: замена файлов Homestead.yaml and /etc/hosts\n"
  sudo cp -f src/Homestead.yaml ~/Homestead/Homestead.yaml
  printf "\n\n --- ${part}: git config\n"
  sudo cp -f src/hosts /etc/hosts


  printf "\n\n --- ${part}: добавление ssh ключей\n"
  sudo cp -R src/ssh/* ~/.ssh


  printf "\n\n --- ${part}: замена владельца для ~/Homestead\n"
  sudo chown -R ${USER}:${USER} ~/Homestead
  printf "\n\n --- ${part}: замена владельца для ~/.vagrant.d\n"
  sudo chown -R ${USER}:${USER} ~/.vagrant.d
}

install_private_part ${1}
