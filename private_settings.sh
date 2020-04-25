#!/bin/bash

echo "--------------------------------------------------------------------------------"
echo "----------------   Welcome to PostInstall 18.04 private part   -----------------"
echo "--------------------------------------------------------------------------------"


install_private_part()
{
  dir="/media/$USER/servers/yakoffka"
  echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
  sudo mkdir "$dir"
  sudo chown "$USER":"$USER" "$dir"

  dir="/media/$USER/servers/ulibAsya"
  echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
  sudo mkdir "$dir"
  sudo chown "$USER":"$USER" "$dir"

  dir="/media/$USER/servers/kanatkom"
  echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
  sudo mkdir "$dir"
  sudo chown "$USER":"$USER" "$dir"

}

install_private_part