#!/bin/bash

#######################################
##
##        /bin/ls command test
##
######################################

echo ============ /bin/ls ==============
command="/bin/ls"

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

echo -e "\n"

#######################################
##
##       hard space /bin/ls command test
##
######################################

echo ============ /bin/ls hard space ==============
command="                                             /bin/ls                                                               "

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

echo -e "\n"


#######################################
##
##        space /bin/ls command test
##
######################################

echo ============ /bin/ls space ==============
command="         /bin/ls          "

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

echo -e "\n"

#######################################
##
##        /bin/ls\r command test
##
######################################

echo ============ /bin/ls\\r ==============
command="/bin/ls\r"

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

echo -e "\n"

#######################################
##
##        \n/bin/ls\n command test
##
######################################

echo ============ \\n/bin/ls\\n ==============
command="\n/bin/ls\n"

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

echo -e "\n"

#######################################
##
##        \t/bin/ls\t command test
##
######################################

echo ============ \\t/bin/ls\\t ==============
command="\t/bin/ls\t"

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
