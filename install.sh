#!/bin/bash

#exit immediatly
set -e
#no emit unset var
set -u

CURRENT_DIR=$(cd `dirname $0`;pwd)
source "$CURRENT_DIR/my.bashrc"
#check path exsists
if [ ! -d $MY_PATH ];then
	mkdir -p $MY_PATH
fi
if [ ! -d $GOPATH ];then
	mkdir -p $GOPATH
]
fi
if [ $CURRENT_DIR != $MY_BASHRC_PATH ];then
	mv $CURRENT_DIR $MY_PATH
fi
#echo "Current Path: $CURRENT_DIR"
#echo "MY_BASHRC_PATH: $MY_BASHRC_PATH"
#echo "pwd: `pwd`"
add="
#Source my bashrc
export MY_BASHRC_FILE=$MY_BASHRC_FILE
if [ -f \$MY_BASHRC_FILE ];then
	source \$MY_BASHRC_FILE
fi
"
check="grep \"Source my bashrc\" $SYSTEM_BASHRC_FILE"
check_result=`eval $check`
echo "check cmd: $check"
echo "check result: $check_result"

#:<<!
if [ "$check_result" == "" ];then
	echo "You have not installed mybashrc"
	echo "$add" >> $SYSTEM_BASHRC_FILE
	echo "Successfully install mybashrc to $SYSTEM_BASHRC_FILE"
else
	echo "You have installed mybashrc"
fi
echo "use **source $SYSTEM_BASHRC_FILE** to apply, then use **bashrc** to modif\n"
#!

#Install Golang
echo "--------Tring to install Golang---------"
if [ ! -d $GOROOT ];then
	echo "You have not installed Golang"
	read -p "Would you like to upgrade git to $GITVERSION (y/no):" res
	if [ $res == "y" ];then
		filename="go${GOVERSION}.linux-amd64.tar.gz"
		filepath="/root/$filename"
		link="https://studygolang.com/dl/golang/$filename"
		if [ ! -f $file ];then
			wget -P $filepath $link
		fi
		tar -C /usr/local -xzf $file
	fi
else
	echo "You have installed golang"
	echo `go version`
fi

#Install Git
echo "--------Tring to install Git"
echo "Your git version: `git --version`"
read -p "Would you like to upgrade git to $GITVERSION (y/no):" res
if [ $res == "y" ];then
	yum remove git -y
	filename="git-${GITVERSION}.tar.xz"
	filepath="/root/git-${GITVERSION}.tar.xz"
	link="https://www.kernel.org/pub/software/scm/git/${filename}"
	if [ ! -f $filepath ];then
		wget -P $filepath $link
	fi
	if [ ! -d $GITSRC ];then
		mkdir -P $GITSRC
	fi
	tar -C $GITSRC -vxf $filepath
	cd $GITSRC/git-${GITVERSION}
	#yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel asciidoc
	#yum install -y gcc perl-ExtUtils-MakeMaker
	rm -rf $GITROOT/*
	make prefix=$GITROOT all
	make prefix=$GITROOT install
fi
#Install KubeEdge-src
echo "--------Tring to install kubeedge src--------"
if [ ! -d $KUBEEDGE_PATH ];then
	echo "You have not installed kubeedge src"
	read -p "Would you like to download kubeedge-src (y/no):" res
	if [ $res == "y" ];then
		git clone https://github.com/kubeedge/kubeedge.git $KUBEEDGE_PATH
	fi
else
	echo "You have installed kubeedge src"
fi

