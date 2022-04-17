#!/bin/sh
#Download required packages
doas pacman -Syu zsh picom dunst xbindkeys feh

#Change shell
SHELL=$(chsh -l | grep 'zsh' | head -n 1)
USER=$(whoami)
echo 'Changing shell to zsh for' $USER 'at' $SHELL '...'
doas chsh $USER $SHELL

#Build dwm
echo 'Building dwm ...'
cd ~/.dwm
doas make clean install

#Build st
echo 'Building st ...'
cd ~/.st
doas make clean install

#Build slstatus
echo 'Building slstatus ...'
cd ~/.slstatus
doas make clean install

#Install vimplug
echo 'Installing vimplug ...'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo 'Run :PlugInstall in neovim after dotfile installation'

#Install ohmyzsh
echo 'Installing ohmyzsh ...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install p10k
echo 'Installing p10k ...'
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Final
echo 'Remember to run :PlugInstall in neovim'
