#!/bin/bash
export WHO_ARE_YOU='gg'
export GG_PATH="/root/$WHO_ARE_YOU/"
export KUBEEDGE_PATH='${GG_PATH}/kubeedge/'
export GOPATH='/root/go/'
export PATH=$PATH:/$GOPATH/bin

alias df='df -h'

alias vimrc='vim ~/.bashrc'
alias socrc='source ~/.bashrc'
alias cdg='cd $GG_PATH'
alias cdw='cd $KUBEEDGE_PATH'
alias cdo='cd $KUBEEDGE_PATH/_output/local/bin'
alias cdy='cd ~/yaml'
alias fuck='echo fuck'

alias gs='git status'

alias k='kubectl'
alias kga='kubectl get all -owide'
alias kgn='kubectl get node -owide'

