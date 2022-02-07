#!/bin/bash

tuning_gsettings() {
  part='part 03. gsettings'
  printf "\n\n\n\n    - ${part} -\n"

  # sudo apt update && sudo apt upgrade

  # GSettings - консольная утилита, при помощи которой можно управлять ключами dconf
  # входит в стандартную поставку Ubuntu
  # вывод списка всех настроек: gsettings list-recursively
  # установка значения по-умолчанию: gsettings reset path.to.property property

  # автоскрытие dash панели
  # gsettings get org.gnome.shell.extensions.dash-to-dock autohide
  gsettings get org.gnome.shell.extensions.dash-to-dock autohide
  gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
  gsettings get org.gnome.shell.extensions.dash-to-dock autohide

  gsettings get org.gnome.shell.extensions.dash-to-dock dock-fixed
  gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
  gsettings get org.gnome.shell.extensions.dash-to-dock dock-fixed

  # уменьшение значков приложений в dash панели
  gsettings get org.gnome.shell.extensions.dash-to-dock dash-max-icon-size
  gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 24
  gsettings get org.gnome.shell.extensions.dash-to-dock dash-max-icon-size

  # уменьшение значков приложений на рабочем столе
  # gsettings get org.gnome.nautilus.list-view default-zoom-level // smallest, smaller, small, standart, large, larger, largest
  gsettings get org.gnome.nautilus.list-view default-zoom-level
  gsettings set org.gnome.nautilus.list-view default-zoom-level small
  gsettings get org.gnome.nautilus.list-view default-zoom-level

  # сворачивание приложений по клику в док-панели
  gsettings get org.gnome.shell.extensions.dash-to-dock click-action
  gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
  gsettings get org.gnome.shell.extensions.dash-to-dock click-action

  # удаление значка корзины с рабочего стола
  # gsettings get org.gnome.shell.extensions.desktop-icons show-trash
  # gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
  # gsettings get org.gnome.nautilus.desktop trash-icon-visible
  gsettings get org.gnome.nautilus.desktop trash-icon-visible
  gsettings set org.gnome.nautilus.desktop trash-icon-visible false
  gsettings get org.gnome.nautilus.desktop trash-icon-visible

  # Положение кнопок GUI слева
  # gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
  # Положение кнопок слева + кнопка «меню»
  # gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize,menu:'

  # Показывать процент заряда батареи
  # gsettings get org.gnome.desktop.interface show-battery-percentage
  gsettings get org.gnome.desktop.interface show-battery-percentage
  gsettings set org.gnome.desktop.interface show-battery-percentage true
  gsettings get org.gnome.desktop.interface show-battery-percentage

  # настроить переключение раскладки клавиатуры (Alt+Shift)
  # gsettings get org.gnome.desktop.wm.keybindings switch-input-source
  #  ['<Super>space', 'XF86Keyboard'] | ['<Super>space']
  # gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Alt>Shift_L', '<Alt>Shift_R', '<Shift>Alt_L', '<Shift>Alt_R']"
  # gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Alt>Shift']"
  # ЕСЛИ И ДАЛЬШЕ БУДЕТ ЗАПАДАТЬ SHIFT, ТО ЗАМЕНИТЬ НА sudo apt install gnome-tweak-tool!!!

  # отключение анимации окон
  #gsettings get org.gnome.desktop.interface enable-animations
  #  true
  # gsettings set org.gnome.desktop.interface enable-animations false

  # добавление даты и секунд  %F %a %T → 2013-06-24 Пнд 16:13:00

  gsettings get org.gnome.desktop.interface clock-show-date
  gsettings set org.gnome.desktop.interface clock-show-date true
  gsettings get org.gnome.desktop.interface clock-show-date

  gsettings get org.gnome.desktop.interface clock-show-seconds
  gsettings set org.gnome.desktop.interface clock-show-seconds true
  gsettings get org.gnome.desktop.interface clock-show-seconds

  gsettings get org.gnome.desktop.interface clock-show-weekday
  gsettings set org.gnome.desktop.interface clock-show-weekday true
  gsettings get org.gnome.desktop.interface clock-show-weekday

  gsettings get org.gnome.desktop.interface clock-format
  gsettings set org.gnome.desktop.interface clock-format '24h'
  gsettings get org.gnome.desktop.interface clock-format

  # мигание курсора дольше 10 секунд в приложении GT (до 70 лет!)
  gsettings get org.gnome.desktop.interface cursor-blink-timeout
  gsettings set org.gnome.desktop.interface cursor-blink-timeout 2147483647
  gsettings get org.gnome.desktop.interface cursor-blink-timeout

  # touchpad
  gsettings get org.gnome.desktop.peripherals.touchpad disable-while-typing
  gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true
  gsettings get org.gnome.desktop.peripherals.touchpad disable-while-typing

  gsettings get org.gnome.desktop.peripherals.touchpad edge-scrolling-enabled
  gsettings set org.gnome.desktop.peripherals.touchpad edge-scrolling-enabled true
  gsettings get org.gnome.desktop.peripherals.touchpad edge-scrolling-enabled


  # dim screen when inactive
  gsettings get org.gnome.settings-daemon.plugins.power idle-dim
  gsettings set org.gnome.settings-daemon.plugins.power idle-dim true
  gsettings get org.gnome.settings-daemon.plugins.power idle-dim

  # sound
  gsettings get com.ubuntu.sound allow-amplified-volume
  gsettings set com.ubuntu.sound allow-amplified-volume true
  gsettings get com.ubuntu.sound allow-amplified-volume

  # remove-old-files
  gsettings set org.gnome.desktop.privacy remove-old-temp-files true
  gsettings set org.gnome.desktop.privacy old-files-age uint32 14
  gsettings set org.gnome.desktop.privacy remove-old-trash-files true
  gsettings set org.gnome.desktop.privacy remember-recent-files false

  # numlock on
  gsettings get org.gnome.settings-daemon.peripherals.keyboard numlock-state
  gsettings set org.gnome.settings-daemon.peripherals.keyboard numlock-state 'on'
  gsettings get org.gnome.settings-daemon.peripherals.keyboard numlock-state

  # night-light
  gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic false
  gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
  gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 0.0
  gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 23.983333333333334


  # надоедливого сообщения
  # gsettings get org.gnome.settings-daemon.plugins.power
  # wget -O - https://gist.githubusercontent.com/guiambros/166039459a8579638b57f7d135505ab1/raw/733b8dd3ac3280bb76f48ba3dc04655df6d69025/silent-mouse.sh | bash -s -- --keyboard



  # disable screensaver
  gsettings set org.gnome.desktop.screensaver lock-enabled false

  gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 3600
  gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

  # password
  # gsettings get org.gnome.login-screen enable-password-authentication
  # gsettings set org.gnome.login-screen enable-password-authentication false
}

tuning_gsettings
