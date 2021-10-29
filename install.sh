#!/bin/bash

#exit immediatly
set -e
#no emit unset var
set -u

CURRENT_PATH=$(cd `dirname $0`;pwd)
source "$CURRENT_PATH/my.bashrc"
#Check path exsists
echo "------- Checking releated paths are created---------"
echo "checking \$MY_PATH:$MY_PATH"
if [ ! -d $MY_PATH ];then
	echo "\$MY_PATH not exsisted, try to create"
	mkdir -p $MY_PATH
fi
echo "checking \$GOPATH:$GOPATH"
if [ ! -d $GOPATH ];then
	echo "\$GOPATH not exsisted, try to create"
	mkdir -p $GOPATH
fi

echo "checking \$Current_PATH and \$MY_BASHRC_PATH"

if [ $CURRENT_PATH != $MY_BASHRC_PATH ];then
	echo "  CURRENT_PATH($CURRENT_PATH) != MY_BASHRC_PATH($MY_BASHRC_PATH), try to move it" 
	mv $CURRENT_PATH $MY_BASHRC_PATH
fi

#Check my bashrc is installed
echo "------- Checking mybashrc is installed---------"

add="#Source my bashrc
export MY_BASHRC_FILE=$MY_BASHRC_FILE
if [ -f \$MY_BASHRC_FILE ];then
	source \$MY_BASHRC_FILE
fi"

if [ `grep "Source my bashrc" $SYSTEM_BASHRC_FILE|wc -l`x == "0"x ];then
	echo "You have not installed mybashrc"
	echo "$add" >> $SYSTEM_BASHRC_FILE
	echo "Successfully install mybashrc to $SYSTEM_BASHRC_FILE"
else
	echo "You have installed mybashrc"
fi
echo "use **source $SYSTEM_BASHRC_FILE** to apply, then use **bashrc** to modif\n"

#Check OS
echo "------- Checking OS---------"
cmd.exe /c ver > /dev/null
if [ $? -eq 0 ];then
	OS="Windows"
else
	OS="Linux"
fi
echo "OS Type: $OS"

#Install Golang
echo "--------Tring to install Golang---------"
if [ ! -d $GOROOT ] && [ $OS == "Linux" ];then
	echo "You have not installed Golang"
	read -p "Would you like to install golang $GOVERSION (y/no):" res
	if [ $res == "y" ];then
		filename="go${GOVERSION}.linux-amd64.tar.gz"
		filepath="/root/$filename"
		link="https://studygolang.com/dl/golang/$filename"
		if [ ! -f $filepath ];then
			wget -O $filepath $link
			tar -C /usr/local -xzf $filepath
		fi
	fi
else
	echo "You have installed golang"
	echo `go version`
fi

#Install Git
echo "--------Tring to install Git"
echo "Your git version: `git --version`"
if [ $OS == "Linux" ];then 
	read -p "Would you like to upgrade git to $GITVERSION (y/no):" res
	if [ $res == "y" ];then
		installdir="/tmp/sel/git"
		filename="git-${GITVERSION}.tar.xz"
		filepath="$installdir/$filename"
		link="https://www.kernel.org/pub/software/scm/git/${filename}"
		untardir="$installdir/untar"
		if [ ! -d $installdir ];then
			mkdir -p $installdir
		fi
		if [ ! -f $filepath ];then
			wget -O $filepath $link
		fi
		if [ ! -d $untardir ];then
			mkdir -p $untardir
			tar -C $untardir -xf $filepath
		fi
		cd $untardir/git-${GITVERSION}
		#yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel asciidoc
		#yum install -y gcc perl-ExtUtils-MakeMaker
		#yum remove git -y
		rm -rf $GITROOT/*
		make prefix=$GITROOT all
		make prefix=$GITROOT install
		rm -rf $installdir
	fi
fi
#Install KubeEdge-src
<<'!'
echo "--------Tring to install kubeedge src--------"
if [ ! -d $KUBEEDGE_PATH ];then
	echo "You have not installed kubeedge src"
	read -p "Would you like to download kubeedge-src (y/no):" res
	if [ $res == "y" ];then
		mkdir -p $KUBEEDGE_PATH
		cd $KUBEEDGE_PATH
		git clone https://github.com/kubeedge/kubeedge.git $KUBEEDGE_PATH
	fi
else
	echo "You have installed kubeedge src"
fi
!

