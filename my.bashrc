#!/bin/bash
# replace gg here to show who are you
export WHO_ARE_YOU='gg'
export GOPATH='/root/go'
export PATH=$PATH:/$GOPATH/bin
export KUBEEDGE_PATH="$GOPATH/src/kubeedge/kubeedge"

alias df='df -h'

alias vimrc='vim ~/.bashrc'
alias soc='source ~/.bashrc'
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
export GG_PATH="/root/$WHO_ARE_YOU"
alias cdg='cd $GG_PATH'
