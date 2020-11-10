#!/bin/bash
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
#echo "PAST_DIR: $CURRENT_DIR"
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
#echo "check cmd: $check"
#echo "check result: $check_result"

#:<<!
if [ "$check_result" == "" ];then
	echo "You have not installed mybashrc"
	echo "$add" >> $SYSTEM_BASHRC_FILE
	echo "Successfully install mybashrc to $MY_BASHRC_FILE"
else
	echo "You have installed mybashrc"
fi
echo "use **source $SYSTEM_BASHRC_FILE** to apply, then use **vimrc** to modify"
#!

