#!/bin/bash
# replace sel here to show who are you
export WHO_ARE_YOU='sel'
export GOPATH='/root/go'
export PATH=$PATH:/$GOPATH/bin
export KUBEEDGE_PATH="$GOPATH/src/kubeedge/kubeedge"
export MY_PATH="$HOME/$WHO_ARE_YOU"
export MY_BAHSRC_PATH="$MY_PATH/bahsrc"
export MY_BASHRC_FILE="$MY_PATH/bashrc/my.bashrc"
export SYSTEM_BASHRC_PATH="$HOME/.bashrc"


alias df='df -h'

alias vimrc="vim $MY_BASHRC_FILE"
alias soc="source $SYSTEM_BASHRC_PATH"
alias cdw='cd $KUBEEDGE_PATH'
alias cdo='cd $KUBEEDGE_PATH/_output/local/bin'
alias cdy='cd ~/yaml'
alias fuck='echo fuck'

alias gs='git status'
alias gm='git commit -m'

alias k='kubectl'
alias kga='kubectl get all -owide'
alias kgn='kubectl get node -owide'

#Config belong to GsssC
export GG_PATH="$MY_PATH"
alias cdg='cd $GG_PATH'
