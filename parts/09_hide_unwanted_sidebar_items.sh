#!/bin/bash

nautilus_hide_unwanted_sidebar_items()
{
    echo "Removing unwanted nautilus sidebar items"

    if [ "1" == "0" ]; then
        # Sidebar items are governed by files in $HOME and /etc
        ls ~/.config/user-dirs*
        ls /etc/xdg/user-dirs*

        cat ~/.config/user-dirs.dirs
        cat ~/.config/user-dirs.locale

        cat /etc/xdg/user-dirs.conf
        cat /etc/xdg/user-dirs.defaults

        #cat ~/.config/user-dirs.conf
    fi

    ### --------------------------------------
    ### modify local config files in $HOME/.config
    ### --------------------------------------

    chmod u+w ~/.config/user-dirs.dirs
    sed -i 's/XDG_DOCUMENTS_DIR/#XDG_DOCUMENTS_DIR/' ~/.config/user-dirs.dirs
    sed -i 's/XDG_TEMPLATES_DIR/#XDG_TEMPLATES_DIR/' ~/.config/user-dirs.dirs
    sed -i 's/XDG_PUBLICSHARE_DIR/#XDG_PUBLICSHARE_DIR/' ~/.config/user-dirs.dirs
    sed -i 's/XDG_MUSIC_DIR/#XDG_MUSIC_DIR/' ~/.config/user-dirs.dirs
    sed -i 's/XDG_PICTURES_DIR/#XDG_PICTURES_DIR/' ~/.config/user-dirs.dirs
    sed -i 's/XDG_VIDEOS_DIR/#XDG_VIDEOS_DIR/' ~/.config/user-dirs.dirs
    ###
    echo "enabled=true" >> ~/.config/user-dirs.conf
    chmod u-w ~/.config/user-dirs.dirs

    ### --------------------------------------
    ### Modify global config files in /etc/xdg
    ### --------------------------------------

    sudo sed -i 's/DOCUMENTS/#DOCUMENTS/'     /etc/xdg/user-dirs.defaults
    sudo sed -i 's/TEMPLATES/#TEMPLATES/'     /etc/xdg/user-dirs.defaults
    sudo sed -i 's/PUBLICSHARE/#PUBLICSHARE/' /etc/xdg/user-dirs.defaults
    sudo sed -i 's/MUSIC/#MUSIC/'             /etc/xdg/user-dirs.defaults
    sudo sed -i 's/PICTURES/#PICTURES/'       /etc/xdg/user-dirs.defaults
    sudo sed -i 's/VIDEOS/#VIDEOS/'           /etc/xdg/user-dirs.defaults
    ###
    sudo sed -i "s/enabled=true/enabled=false/" /etc/xdg/user-dirs.conf
    sudo echo "enabled=false" >> /etc/xdg/user-dirs.conf
    sudo sed -i "s/enabled=true/enabled=false/" /etc/xdg/user-dirs.conf

    # Trigger an update
    xdg-user-dirs-gtk-update

    echo "
    NOTE:
        After restarting nautilus the unwanted items will be demoted to regular
        bookmarks. You can now removed them via the right click context menu.
    "
}

nautilus_hide_unwanted_sidebar_items
