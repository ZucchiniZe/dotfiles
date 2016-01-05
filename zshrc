#!/usr/bin/env zsh

# my zshrc file

# set editor to emacs
export EDITOR=emacsclient
# set browser to chrome
export BROWSER=google-chrome
# add .bin to the path for easily executable scripts
export PATH=$PATH:$HOME/.bin:$HOME/.bin/priv
# add android_home
export ANDROID_HOME=$HOME/code/comp/android-sdk-linux

# include the aliases in current shell
source ~/.aliases

# enable prompts
autoload -U promptinit && promptinit

# load zplug (faster alternitave to antigen)
source ~/.zplug/zplug

# let zplug manage itself
zplug "b4b4r07/zplug"

# zplug loading
zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "zsh-users/zsh-completions"
zplug "mafredri/zsh-async"
zplug "ZucchiniZe/pure"
zplug "rimraf/k"
zplug "arzzen/calc.plugin.zsh"

zplug "plugins/git",   from:oh-my-zsh, if:"which git"
zplug "lib/clipboard", from:oh-my-zsh

zplug "clvv/fasd", as:command, of:fasd

zplug "junegunn/fzf-bin", \
      as:command, \
      from:gh-r, \
      file:fzf, \
      of:"*linux*amd64*"

zplug "stedolan/jq", \
      as:command, \
      file:jq, \
      from:gh-r

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# get fasd setup
eval "$(fasd --init auto)"

# load nvm
export NVM_DIR="/home/alex/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# fix the delete key
bindkey "\e[3~" delete-char

# enable history
HISTFILE=$HOME/.zhistory
HISTSIZE=1200
SAVEHIST=1000
setopt append_history
setopt hist_expire_dups_first
setopt extended_history
