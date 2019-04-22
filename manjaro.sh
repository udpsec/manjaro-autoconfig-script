#!/bin/bash 
echo "FarmSec-码中春秋（大表哥） 肥宅快乐Manjaro一键高潮脚本"
cd ~
echo "============================="
echo "更新源相关操作"
sudo pacman-mirrors -i -c China -m rank

sudo echo -e "\n[archlinuxcn]\nSigLevel = Optional TrustAll\nServer = https://mirrors.ustc.edu.cn/archlinuxcn/\$arch" >> /etc/pacman.conf

sudo pacman -Syyu && sudo pacman -S archlinuxcn-keyring 

echo "============================="
echo "安装yay"
sudo pacman -S yay 

echo "============================="
echo "安装输入法"
sudo yay -S  fcitx-im fcitx-configtool fcitx-sogoupinyin 

sudo echo -e "export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx" | sudo  tee -a >> ~/.xprofile
 
echo "============================="
echo "安装常用软件"
sudo yay -Sy --noconfirm virtualbox smplayer smplayer-skins smplayer-themes google-chrome masterpdfeditor typora uget filezilla shadowsocks-qt5 deepin-screenshot shutter proxychains-ng visual-studio-code-bin neofetch dropbox telegram-desktop deluge aria2-fast uget zsh oh-my-zsh-git openssh openssl gwenview plank rdesktop python2-pip numix-gtk-theme numix-circle-icon-theme-git teamview gpick simplescreenrecorder ranger pandoc graphviz teamview net-tools ntfs-3g-fuse vivaldi flashplugin quiterss shutter catfish peek

echo "============================="
echo "安装根据色温调节屏幕亮度和清理软件"
sudo yay -Sy --noconfirm bleachbit redshift 

echo "============================="
echo "安装软件汉化"
sudo yay -Sy --noconfirm firefox-i18n-zh-cn thunderbird-i18n-zh-cn gimp-help-zh_cn

echo "============================="
echo "安装微软雅黑和consolas混合字体
chmod +x yahei.sh && sh yahei.sh

echo "============================="
echo "安装常用字体
sudo yay -Sy --noconfirm ttf-wps-fonts ttf-dejavu adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts && fc-cache -fv

# ....
echo "============================="
echo "Reboor now? Y/N"
 
read res
 
if [[ $res = "Y"||$res = "y" ]]
then
        sudo reboot
elif [[ $res = "N"||$res = "n" ]]
then
        echo "============================="
        echo -e "OK!\nBut if you need,you can edit the program."

fi
