#!/bin/bash

install_private_part()
{
    echo ""
    echo "    -part 07: private-"

    #echo "git config"
    git config --global user.email "yagithub@mail.ru"
    git config --global user.name "yakoffka"

    dir="/media/$USER/servers/yakoffka"
    #echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
    sudo mkdir "$dir"
    sudo chown "$USER":"$USER" "$dir"

    dir="/media/$USER/servers/ulibAsya"
    #echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
    sudo mkdir "$dir"
    sudo chown "$USER":"$USER" "$dir"

    dir="/media/$USER/servers/kanatkom"
    #echo "создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."
    sudo mkdir "$dir"
    sudo chown "$USER":"$USER" "$dir"

    # замена звука ошибки
    sudo cp -f '../src/stereo/bell.ogg' '/usr/share/sounds/ubuntu/stereo/bell2.ogg'
}

install_private_part