#!/bin/bash

echo "--------------------------------------------------------------------------------"
echo "---------------   Welcome to PostInstall 18.04 GSettings part   ----------------"
echo "--------------------------------------------------------------------------------"


# sudo apt update && sudo apt upgrade

  # GSettings - консольная утилита, при помощи которой можно управлять ключами dconf
  # входит в стандартную поставку Ubuntu
  # вывод списка всех настроек: gsettings list-recursively
  # установка значения по-умолчанию: gsettings reset path.to.property property


  # автоскрытие dash панели
    # gsettings get org.gnome.shell.extensions.dash-to-dock autohide
    gsettings set org.gnome.shell.extensions.dash-to-dock autohide true

  # уменьшение значков приложений
    gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 24

  # сворачивание приложений по клику в док-панели
    gsettings get org.gnome.shell.extensions.dash-to-dock click-action
    gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

  # удаление значка корзины с рабочего стола
    # gsettings get org.gnome.shell.extensions.desktop-icons show-trash
    # gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
    # gsettings get org.gnome.nautilus.desktop trash-icon-visible
    gsettings set org.gnome.nautilus.desktop trash-icon-visible false

  # Положение кнопок GUI слева
    # gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
  # Положение кнопок слева + кнопка «меню»
    # gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize,menu:'

  # Показывать процент заряда батареи
    # gsettings get org.gnome.desktop.interface show-battery-percentage
    gsettings set org.gnome.desktop.interface show-battery-percentage true

  # настроить переключение раскладки клавиатуры (Alt+Shift)
    # gsettings get org.gnome.desktop.wm.keybindings switch-input-source
    #  ['<Super>space', 'XF86Keyboard']
    gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Alt>Shift_L', '<Alt>Shift_R', '<Shift>Alt_L', '<Shift>Alt_R']"
    # gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ru')]"

  # отключение анимации окон
    #gsettings get org.gnome.desktop.interface enable-animations
    #  true
    gsettings set org.gnome.desktop.interface enable-animations false

  # добавление даты и секунд  %F %a %T → 2013-06-24 Пнд 16:13:00
    # gsettings get org.gnome.desktop.interface clock-show-date
    gsettings set org.gnome.desktop.interface clock-show-date true
    # gsettings get org.gnome.desktop.interface clock-show-seconds
    gsettings set org.gnome.desktop.interface clock-show-seconds true
    # gsettings get org.gnome.desktop.interface clock-show-weekday
    gsettings set org.gnome.desktop.interface clock-show-weekday true
    # gsettings get org.gnome.desktop.interface clock-format
    gsettings set org.gnome.desktop.interface clock-format '24h'

  # мигание курсора дольше 10 секунд в приложении GT (до 70 лет!)
    # gsettings get org.gnome.desktop.interface cursor-blink-timeout
    gsettings set org.gnome.desktop.interface cursor-blink-timeout 2147483647

  # touchpad
    # gsettings get org.gnome.desktop.peripherals.touchpad disable-while-typing
    gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true
    # gsettings get org.gnome.desktop.peripherals.touchpad edge-scrolling-enabled
    gsettings set org.gnome.desktop.peripherals.touchpad edge-scrolling-enabled true

  # password
    # gsettings get org.gnome.login-screen enable-password-authentication
    # gsettings set org.gnome.login-screen enable-password-authentication false

echo "The end of GSettings part"