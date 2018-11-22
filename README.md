# dotfiles

This expects that you are using zsh, it's recent enough and it's your default login shell.

This also expects that you back up your existing dotfiles and that you don't run the commands below without looking at what they are doing, because they could blow your existing config to smithereens.

Steps to setup:
$ git clone https://github.com/zsh-users/antigen.git ~/antigen
$ ln -s antigen/antigen.zsh ~/antigen.zsh

Assuming you have cloned this repo to .dotfiles in your ~/ then you'd do

$ for file in .dotfiles/{antigenrc,bashrc,hushlogin,hyper.js,inputrc,profile,tmux.conf,vimrc,vimrc.bundles,vimrc.bundles.local,vimrc.local,zlogin,zlogout,zpreztorc,zprofile,zshenv,zshrc} ; do ln -sf $file .${file##*/} ; done
$ ln -sf .dotfiles/z.sh z.sh

This is really all there is to it. Log out, log back in, enjoy.

/S

