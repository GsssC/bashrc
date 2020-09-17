#!/bin/bash
# replace sel here to show who are you
export WHO_ARE_YOU='sel'
export GOROOT='/usr/local/go'
export GOPATH='/root/go'
export PATH=$PATH:$GOROOT/bin:/$GOPATH/bin
export KUBEEDGE_PATH="$GOPATH/src/kubeedge/kubeedge"
export MY_PATH="$HOME/$WHO_ARE_YOU"
export MY_BASHRC_PATH="$MY_PATH/bashrc"
export MY_BASHRC_FILE="$MY_PATH/bashrc/my.bashrc"
export SYSTEM_BASHRC_FILE="$HOME/.bashrc"


alias df='df -h'

alias vimrc="vim $MY_BASHRC_FILE"
alias soc="source $SYSTEM_BASHRC_FILE"
alias cdk='cd $KUBEEDGE_PATH'
alias cdo='cd $KUBEEDGE_PATH/_output/local/bin'
alias cdm='cd $MY_PATH'
alias cdy='cd ~/yaml'
alias fuck='echo fuck'

alias gs='git status'
alias gm='git commit -m'
alias g='git'

alias k='kubectl'
alias kga='kubectl get all -A -owide'
alias kgn='kubectl get node -owide'

#Config belong to GsssC
export GG_PATH="$MY_PATH"
alias cdg='cd $GG_PATH'
