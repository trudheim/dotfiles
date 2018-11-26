# dotfiles

This expects that you are using zsh, it's recent enough and it's your default login shell.

### Warning

This also expects that you back up your existing dotfiles and that you don't run the commands below without looking at what they are doing, because they could blow your existing config to smithereens.

### macOS

Grab [Homebrew][homebrew] and install that. Once you have it installed (after "brew doctor", installing XCode and the commandline bits) and it is working, you want to do:

I use two languages, so I install an additional one. "brew info aspell" and look in the list so that you enable the ones that you actually need. It can be fixed later, but if you do this now it's less hassle.

$ brew install aspell --with-lang-sv

Then it's time to install all the other goodies. Odds are you will not agree with my list, you have other tools that you want, that's fine, but these are bare minimum.

$ brew install curl emacs git gnupg irssi lftp mosh neomutt nmap tmux tree vim z zsh

This will pull in a lot of other cruft. Be patient.

 * curl - swiss army knife of HTTP and FTP
 * emacs - editor galore
 * git - version and revision control
 * gnupg - encryption tool
 * irssi - console IRC
 * lftp - commandline FTP utility
 * mosh - maybe called mobile shell, sets up ssh to run over UDP which allows you to sleep a device, change network and not lose the connection.
 * neomutt - console e-mail tool that ties in nicely with notmuch if you want to index a **large** amount of mail
 * nmap - swiss army knife of poking a network and what's on it
 * tmux - screen, but better. Integrates nicely with iTerm2 if you are using that terminal on macOS
 * tree - console file/directory overview tool
 * vim - the other editor galore
 * z - z.sh, checks what directories you cd to often and will make smart suggestions when navigating the filesystem
 * zsh - the shell and the reason for this guide

Steps to setup the rest:
$ git clone git@github.com:trudheim/dotfiles.git .dotfiles
$ for file in .dotfiles/{antigenrc,bashrc,emacs,hushlogin,hyper.js,inputrc,profile,tmux.conf,vimrc,vimrc.bundles,vimrc.bundles.local,vimrc.local,zlogin,zlogout,zpreztorc,zprofile,zshenv,zshrc} ; do ln -sf $file .${file##*/} ; done
$ ln -sf .dotfiles/z.sh z.sh
$ git clone https://github.com/zsh-users/antigen.git ~/antigen
$ ln -s antigen/antigen.zsh ~/antigen.zsh
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ mkdir -p ~/.emacs.d/vendor

If you are running the emacs server (when you install Emacs via brew it will tell you how to start it at boot etc) and you want to load your config in the running server, 'M-x load-file ~/.emacs' will do it if you're connected via 'emacsclient -nw'. Just starting Emacs should compile all you need.

When you fire up Vim, issue ':VundleUpdate' and it should pull in all the plugins and get you going.

The last step is to change your shell to zsh as your default.

$ chsh -s /usr/local/bin/zsh

This is really all there is to it. Log out, log back in, enjoy.

### Linux

Pretty much the exact same steps, apart from the installation of the utilities. Whether you're using apt or yum or something else, once you have zsh, emacs and vim installed, the remaining steps are the same pretty much. I have the z.sh in this dotfiles repo, but you might want to grab it from [the git repo][z.sh] if you are not running macOS, and if you are running macOS and you have it via brew, you might want to change where you set your symlink. Anyway, you'll work it out.

/S

[homebrew]: https://brew.sh
[z.sh]: https://github.com/rupa/z
