#!/bin/bash

#######################################
##
##        /bin/ls -l (One flag)
##
######################################

echo ============ /bin/ls -a ==============
command="/bin/ls -a"

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
##        /bin/ls -b -a (Two flags)
##
######################################

echo ============ /bin/ls -b -a ==============
command="/bin/ls -b -a"

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
##        /bin/ls -ba (Tow flag in one)
##
######################################

echo ============ /bin/ls -ba ==============
command="/bin/ls -ba"

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
##        /bin/ls -a space
##
######################################

echo ============ /bin/ls -a space ==============
command="/bin/ls                                              -a"

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
##        /bin/ls \t -a
##
######################################

echo ============ /bin/ls \\t -a ==============
command="/bin/ls \t -a"

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
##        /bin/ls \n\t -a\r
##
######################################

echo ============ /bin/ls \\n\\t -a\\r ==============
command="/bin/ls \t\n -a\r"

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
