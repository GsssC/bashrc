#!/bin/bash
CURRENT_DIR=$(cd `dirname $0`;pwd)
MY_BASHRC_PATH="$CURRENT_DIR/my.bashrc"
SYSTEM_BASHRC_PATH="$HOME/.bashrc"

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

