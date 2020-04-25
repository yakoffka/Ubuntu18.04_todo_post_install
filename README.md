# Ubuntu18.04 todo post install script

### description
A script that automates the operations that I constantly perform after installing Ubuntu 18.04

If you want to use it, I recommend editing the file 07_private_settings.sh, as well as adding your keys to the 'src/ssh/' directory (if any)

### описание

Скрипт, автоматизирующий операции, которые я постоянно выполняю после установки Ubuntu 18.04

Если Вы пожелаете воспользоваться им, то рекомендую отредактировать файл 07_private_settings.sh, а также добавить в директорию src/ssh/ Ваши ключи (при их наличии)


### details

##### system part
1. обновление системы;
1. темная тема Yaru/Communitheme;
1. индикатор системных ресурсов system-monitor;
1. добавление в контекстное меню проводника пункта 'создать файл';

##### codecs part
1. установка мультимедиа кодеков и шрифтов (поддержка воспроизведения MP3 и незашифрованного DVD, основные шрифты Microsoft TrueType, плагин Adobe Flash, FFmpeg и прочее)

##### gsettings part
изменение настроек gsettings:
1. автоскрытие dash панели;
1. уменьшение значков приложений;
1. сворачивание приложений по клику в док-панели;
1. удаление значка корзины с рабочего стола;
1. смена комбинации клавиш переключения раскладки клавиатуры (Alt+Shift)
1. отключение анимации окон;
1. увеличение продолжительности мигания курсора дольше 10 секунд в приложении GT (до 70 лет!)
1. изменение формата времени; 

##### utilities part
установка утилит (mc, curl, apt-transport-https, git)

##### system part
1. gimp;
1. inkscape;
1. slack;
1. ktouch;

##### sshfs part
установка sshfs, создание директории для монтирования удаленной файловой системы;

##### private part
добавление персональной информации:
1. заполнение git config;
1. создание поддиректорий для sshfs;
1. замена бесящего меня звука ошибки;

##### php v7.4
установка php v7.4 

### install / установка
It is advisable to clone the repository before installation and upload it to the installation USB flash drive and run immediately after installing the system - there will be no need to manually install git

Желательно клонировать репозиторий до установки и залить его на установочную флешку и запускать сразу после установки системы - отпадет необходимость ручной установки git
```
$ git clone https://github.com/yakoffka/Ubuntu18.04_todo_post_install.git
$ cd Ubuntu18.04_todo_post_install/
$ ./to_do_well.sh
```
### after install / после установки

после выполнения скрипта не забудьте выполнить:
1. system-monitor -> Preferences -> General -> checked 'Run on startup';
1. после зерезагрузки выбрать сессию 'Ubuntu with communitheme snap' как показано [здесь](https://github.com/ubuntu/yaru#using-a-legacy-yarucommunitheme-version-on-ubuntu-1804-bionic-beaver-via-snap-installation);
1. добавить в браузер Mozilla расширения:
    1. Adblock Plus (free ad blocker);
    1. GNOME Shell integration (GNOME Shell extensions);
    1. Stay secure with CyberGhost VPN Free Proxy;
    1. Video DownloadHelper;
1. установить расширение [Pixel Saver](https://extensions.gnome.org/extension/723/pixel-saver/) - перенос заголовка и кнопок управления в меню приложений;
