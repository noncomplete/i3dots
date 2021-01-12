#!/usr/bin/env bash

# Software to install after a fresh install. Please DO NOT run as root.

cd
echo "!! in directory : $(pwd)"

echo "----------------Installing environment--------------"

sudo pacman -S alacritty xorg vi vim i3 picom xfce4 xfce4-goodies rofi git wget base-devel tar pcmanfm xarchiver lxappearance lxqt-policykit udiskie mpv dunst feh evince


echo "----------------Installing yay----------------------"

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
echo "!! in directory : $(pwd)"


echo "----------------Installing fonts--------------------"

sudo pacman -S nerd-fonts-iosevka ttf-dejavu


echo "----------------Installing anaconda-----------------"

mkdir sci_soft
cd sci_soft
echo "!! in directory : $(pwd)"
wget "https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh"
bash ./Anaconda3-2020.11-Linux-x86_64.sh


echo "----------------Installing julia--------------------"

wget "https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.5-linux-x86_64.tar.gz"
tar -xvzf ./julia-1.0.5-linux-x86_64.tar.gz
cd
echo "!! in directory: $pwd"


echo "----------------Installing fish + omf---------------"
sudo pacman -S fish
curl -L https://get.oh-my.fish | fish
omf install kawasaki
conda init fish


echo "----------------Installing neovim-------------------"
sudo pacman -S neovim
pip install neovim
echo ".....installing node.js for coc.nvim  :("
sudo curl -sL install-node.now.sh/lts | bash


echo "----------------Installing polybar------------------"

yay -S polybar


echo "----------------Installing dotfiles-----------------"

cd i3dots
echo "!! in directory $(pwd)"
cp .xinitrc ../.xinitrc
sudo chmod +x ../.xinitrc
mkdir ../.config
cp -r .config/ ../.config


echo "........Success!!!"
