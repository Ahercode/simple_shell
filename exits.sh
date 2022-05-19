#!/bin/bash


#######################################
##
##        exit
##
######################################

echo "============ exit return value =============="
command="exit"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null 2> /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null 2> /dev/null
echo $? > sh_check

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============

#######################################
echo -e "\n"
######################################

#######################################
##
##        exit return value ls do not find
##
######################################

echo "============ exit return value ls do not find=============="
command="ls /sss
exit"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null 2> /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null 2> /dev/null
echo $? > sh_check

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============
