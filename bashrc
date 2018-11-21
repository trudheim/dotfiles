set -o histexpand on
shopt -s cdable_vars
shopt -u cdspell
shopt -u checkhash
shopt -s checkwinsize
shopt -s cmdhist
shopt -u dotglob
shopt -u execfail
shopt -s expand_aliases
shopt -u extdebug
shopt -s extglob
shopt -s extquote
shopt -u failglob
shopt -s force_fignore
shopt -u gnu_errfmt
shopt -s histappend
shopt -s histreedit
shopt -s histverify
shopt -s hostcomplete
shopt -u huponexit
shopt -s interactive_comments
shopt -s lithist
shopt -s login_shell
shopt -s mailwarn
shopt -u no_empty_cmd_completion
shopt -u nocaseglob
shopt -u nocasematch
shopt -u nullglob
shopt -s progcomp
shopt -s promptvars
shopt -u restricted_shell
shopt -u shift_verbose
shopt -s sourcepath
shopt -u xpg_echo


if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Solarized_Extravagant
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias "ls"="ls -Fp "
alias "ll"="ls -lFp "

