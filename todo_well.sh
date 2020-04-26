#!/bin/bash

echo "--------------------------------------------------------------------------------"
echo "----------------------   Welcome to PostInstall 18.04   ------------------------"
echo "--------------------------------------------------------------------------------"


todo_well()
{
    parts=(
        '01_system.sh'
        '02_codecs.sh'
        '03_gsettings.sh'
        '04_utilities.sh'
        '05_software.sh'
        '06_sshfs.sh'
        '07_laravel_homestead.sh'
        '08_php_7_4.sh'
        '09_private_settings.sh'
    )

    for part in ${parts}; do
        sudo chmod u+x ./parts/${part}
        ./parts/${part}
    done
}

todo_well