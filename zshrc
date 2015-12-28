#!/usr/bin/env zsh

# my zshrc file

export EDITOR=emacsclient

# include the aliases in current shell
source ~/.aliases

# add .bin to the path for easily executable scripts
export PATH=$PATH:$HOME/.bin

# enable prompts
autoload -U promptinit && promptinit

# load antigen
source ~/.include/antigen.zsh

# antigen rules
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle mafredri/zsh-async
antigen bundle ZucchiniZe/pure
