#!/bin/bash
# replace sel here to show who are you
export WHO_ARE_YOU='sel'
export MY_PATH="$HOME/$WHO_ARE_YOU"
export MY_BASHRC_PATH="$MY_PATH/bashrc"
export MY_BASHRC_FILE="$MY_PATH/bashrc/my.bashrc"
export SYSTEM_BASHRC_FILE="$HOME/.bashrc"


#Config belong to GsssC
export GG_PATH="$MY_PATH"
alias cdg="cd $GG_PATH"
alias vimrc="vim $HOME/.vimrc" 
alias bashrc="vim $MY_BASHRC_FILE"
alias soc="source $SYSTEM_BASHRC_FILE"
alias cdm="cd $MY_PATH"
alias cdy='cd ~/yaml'

#Install Golang
export GOROOT="$HOME/sdk/go1.15.1"
export GOPATH="$HOME/Documents/Go"
export GOVERSION='1.14.11'
export GOPROXY="https://goproxy.io,direct"
export PATH=$PATH:$GOROOT/bin:/$GOPATH/bin

#KubeEdge
export KUBEEDGE_PATH="$GOPATH/src/github.com/kubeedge/kubeedge"
alias cdk='cd $KUBEEDGE_PATH'
alias cdo='cd $KUBEEDGE_PATH/_output/local/bin'

#Kubernetes
alias k='kubectl'
alias kga='kubectl get all -A -owide'
alias kgn='kubectl get node -owide'

#Git
export GITROOT='/usr/local/git'
export GITSRC='/usr/local/src'
export GITVERSION="2.20.1"
PATH=$PATH:$GITROOT/bin
alias gs='git status'
alias gm='git commit -m'
alias g='git'

#Others
alias df='df -h'
alias fuck='echo fuck'


#Windows 10
export GITHUB_PATH="$HOME/Documents/GitHub"
export KUBEEDGE_PATH="$GITHUB_PATH/kubeedge"
alias cdg="cd $GITHUB_PATH"
alias cdk="cd $KUBEEDGE_PATH"
alias cds="cd $GITHUB_PATH/sel-articles"
alias ssh80="ssh root@10.10.102.80"
#export LC_ALL="zh_CN.UTF-8"
#export LANG="zh_CN.UTF-8"
