#!/bin/bash

ver='v1.1.0'

echo "--------------------------------------------------------------------------------"
echo "-------------------   Welcome to PostInstall 18.04 ${ver}  ---------------------"
echo "--------------------------------------------------------------------------------"
date "+%H:%M:%S %y.%m.%d"

todo_well() {
  parts=(
    '01_system.sh'
    '03_gsettings.sh'
#    '04_docker.sh'
    '05_software.sh'
    '06_sshfs.sh'
    '07_laravel_homestead.sh'
    '08_php_7_4.sh'
    '09_hide_unwanted_sidebar_items.sh'
    '10_private_settings.sh'
  )

  path=/etc/sudoers.d/${USER}
  sudo echo 'echo "${USER} ALL=NOPASSWD: ALL" | sudo tee -a ${path}'
  echo "${USER} ALL=NOPASSWD: ALL" | sudo tee -a "${path}"
  sudo chmod 0440 "${path}"

  for part in ${parts[*]}; do
    sudo chmod u+x ./parts/"${part}"
    ./parts/"${part}"
  done

  sudo rm -rf "${path}"
}

gsettings list-recursively >gsettings_1.list
todo_well
gsettings list-recursively >gsettings_2.list

date "+%H:%M:%S %y.%m.%d"
echo "--------------------------------------------------------------------------------"
echo "-------------------    end PostInstall 18.04 ${ver}. bye   ---------------------"
echo "--------------------------------------------------------------------------------"
