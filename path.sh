#!/bin/bash

#######################################
##
##        ls
##
######################################

echo ============ ls ==============
command="ls"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > hsh_check 2> /dev/null &
echo -e "$command" | sh > sh_check 2> /dev/null &

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
##        pwd
##
######################################

echo ============ pwd ==============
command="pwd"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > hsh_check 2> /dev/null &
echo -e "$command" | sh > sh_check 2> /dev/null &

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
##        lsdsd
##
######################################

echo ============ lsdsd ==============
command="lsdsd"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > hsh_check 2> /dev/null &
echo -e "$command" | sh > sh_check 2> /dev/null &

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
##        ls -a
##
######################################

echo ============ ls -a ==============
command="ls -a"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > hsh_check 2> /dev/null &
echo -e "$command" | sh > sh_check 2> /dev/null &

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
##        ls -ab
##
######################################

echo ============ ls -ab ==============
command="ls -ab"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > hsh_check 2> /dev/null &
echo -e "$command" | sh > sh_check 2> /dev/null &

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
##        ls \t\n -a
##
######################################

echo ============ ls \\t\\n -a ==============
command="ls \t\n -a"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > hsh_check 2> /dev/null &
echo -e "$command" | sh > sh_check 2> /dev/null &

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
##        ls return value
##
######################################

echo "============ ls return value =============="
command="ls"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > /dev/null
echo $? > hsh_check
echo -e "$command" | sh > /dev/null
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
##        lssdsd return value
##
######################################

echo "============ lssdsd return value =============="
command="lssdsd"

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
##        ls /sssss return value
##
######################################

echo "============ ls /sssss return value =============="
command="ls /sssss"

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
