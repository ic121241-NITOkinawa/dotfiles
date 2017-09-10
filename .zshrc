autoload -U compinit;compinit
autoload -Uz colors;colors
autoload predict-on;predict-on

setopt auto_cd
setopt auto_list
setopt auto_pushd
setopt auto_param_keys
setopt hist_no_store
setopt print_eight_bit
setopt correct
setopt correct_all
setopt ignoreeof
setopt cdable_vars
setopt extendedglob
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt NUMERIC_GLOB_SORT
setopt RM_STAR_WAIT
setopt noclobber
setopt multios
setopt list_rows_first
setopt list_types
setopt menu_complete
setopt hist_ignore_dups
setopt share_history
setopt list_packed
setopt mark_dirs

bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

alias where="command -v"

alias -s c=emacs
alias -s h=emacs
alias -s cpp=emacs
alias -s zshrc=emacs
alias -s txt=less
alias -s xml=less
alias ls="ls -aGF"
alias la="ls -aGF"
alias lt="ls -tG"
alias lr="ls -rG"
alias ltr="ls -rtG"
alias ll="ls -lG"
alias lsdir='ls -lG | grep ^d'
alias lf='ls -F'
alias dir="ls -aG"
alias sudo='sudo '
alias du='du -h'
alias df='du -h'
alias j='jobs -l'
alias vi=vim

function chpwd() { ls }

function toon {
  echo -n ""
}

if [ ~/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi
