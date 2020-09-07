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
mv $CURRENT_DIR $MY_PATH

add="
#Source my bashrc
export MY_BASHRC_PATH=$MY_BASHRC_PATH
if [ -f \$MY_BASHRC_PATH ];then
	source \$MY_BASHRC_PATH
fi
"
check="grep -A 10 \"Source my bashrc\" $SYSTEM_BASHRC_PATH"
check_result=`eval $check`
echo "check cmd:$check"
echo "check result: 
$check_result"

#:<<!
if [ "$check_result" == "" ];then
	echo "$add" >> $SYSTEM_BASHRC_PATH
fi
#!

