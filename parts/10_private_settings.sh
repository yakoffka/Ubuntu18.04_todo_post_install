#!/bin/bash

install_private_part()
{
    echo ""
    echo "    -part 07: private-"

    # имя пользователя
    name_user='yo'

    #echo "git config"
    git config --global user.email "yagithub@mail.ru"
    git config --global user.name "yakoffka"

    dir="/media/${name_user}/servers/yakoffka"
    #echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
    sudo mkdir "$dir"
    sudo chown "${name_user}":"${name_user}" "$dir"

    dir="/media/${name_user}/servers/ulibAsya"
    #echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
    sudo mkdir "$dir"
    sudo chown "${name_user}":"${name_user}" "$dir"

    dir="/media/${name_user}/servers/kanatkom"
    #echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
    sudo mkdir "$dir"
    sudo chown "${name_user}":"${name_user}" "$dir"

    # замена звука тревоги
    sudo cp -f '../src/stereo/bell.ogg' '/usr/share/sounds/ubuntu/stereo/bell.ogg'
    # !!! не работает для communitheme!!!
    # sudo cp -f '/snap/communitheme/1987/share/sounds/communitheme/stereo/bell.ogg' '/snap/communitheme/1987/share/sounds/communitheme/stereo/bell_.ogg'
    # sudo cp -f '../src/stereo/bell.ogg' '/snap/communitheme/1987/share/sounds/communitheme/stereo/bell.ogg'
    #     cp: cannot stat '/snap/communitheme/1987/share/sounds/communitheme/stereo/bell.ogg': No such file or directory
    #     cp: cannot create regular file '/snap/communitheme/1987/share/sounds/communitheme/stereo/bell.ogg': Read-only file system

    sudo chown -R ${name_user}:${name_user} ~/Homestead
    sudo chown -R ${name_user}:${name_user} ~/.vagrant.d
}

install_private_part

