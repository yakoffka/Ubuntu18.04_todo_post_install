#!/bin/bash

install_sshfs_part()
{
    echo ""
    echo "    -part 06: sshfs-"


    dir="/media/$USER/servers"
    echo "установка sshfs, создание директории '$dir' с владельцем '$USER' для монтирования удаленной файловой системы."

    sudo apt install -y sshfs
    sshfs --version

    sudo mkdir "$dir"
    sudo chown "$USER":"$USER" "$dir"
}

install_sshfs_part