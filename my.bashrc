#!/bin/bash
export WHO_ARE_YOU='GG'
export MY_PATH="$HOME/$WHO_ARE_YOU"
export MY_BASHRC_PATH="$MY_PATH/bashrc"
export MY_BASHRC_FILE="$MY_PATH/bashrc/my.bashrc"
export SYSTEM_BASHRC_FILE="$HOME/.bashrc"
export MY_VIMRC_FILE="$HOME/.vimrc"

#set
set -o vi


#Config belong to GsssC
export GG_PATH="$MY_PATH"
alias cdg='cd $GG_PATH'
alias bashrc="vim $MY_BASHRC_FILE"
alias vimrc="vim $MY_VIMRC_FILE"
alias gconfig="vim ~/.gitconfig"
alias soc="source $SYSTEM_BASHRC_FILE"
alias cdm='cd $MY_PATH'
alias cdy="cd $HOME/yaml"
alias ll="ls -l --show-control-chars --color=auto"
alias cd-="popd"
alias cd="pushd 1> /dev/null"
export LESSHARESET=utf-8 
export LC_CTYPE=zh_CN.UTF-8@cjknarrow

#Install Golang
export GOROOT="$HOME/go/go1.14.6"
export GOPATH="$HOME/go"
export GOVERSION='1.14.11'
export GO111MODULE="on"
export GOPROXY=http://cmc.centralrepo.rnd.huawei.com/cbu-go,direct
alias cpgp="echo GOPROXY=$GOPROXY | clip;"
export GOSUMB="off"
export GONOSUMDB=*
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

#KubeEdge
export KUBEEDGE_PATH="$GOPATH/src/github.com/kubeedge/kubeedge"
alias cdk='cd $KUBEEDGE_PATH'
alias cdo='cd $KUBEEDGE_PATH/_output/local/bin'

#Kubernetes
export KUBECONFIG="/etc/kubernetes/admin.conf"
alias k='kubectl'
alias kga='kubectl get all -A -owide'
alias kgn='kubectl get node -owide'
alias kgp='kubectl get pods -owide'
alias ssk='systemctl status kubelet'

#Git
export GITROOT='/usr/local/git'
export GITSRC='/usr/local/src'
export GITVERSION="2.20.1"
PATH=$PATH:$GITROOT/bin
alias gs='git status'
alias gm='git commit -a'
alias gc='git checkout .'
alias gr='git rebase -i'
alias gl='git log'
alias gcdf='git clean -df'
alias g='git'

#Others
alias df='df -h'
alias fuck='echo fuck'
alias django-admin="python -m django"
export CBB_ALGO_MODE="gm"

#SSH
alias ssh146='ssh root@100.95.171.146'
alias sshu3='echo "_h4IGmE1jndvj(n_" | clip;ssh -i ~/g00613881.pem  g00613881@csm-ssh-ulanqab3.inhuawei.com -p 5555'
alias sshz='echo "zhaor_fly@163.com" | clip;ssh root@100.94.11.85'


#Drops
#alias ne="pkill edgecore;sleep 1s;nohup $KUBEEDGE_PATH/_output/local/bin/edgecore 2>&1 1>$MY_PATH/elog &"
#alias elog="vim $MY_PATH/elog"
#alias api-test="git pull --rebase origin apiserver-lite;make WHAT=edgecore"
#alias sqlite3="sqlite3 /var/lib/kubeedge/edgecore.db"
