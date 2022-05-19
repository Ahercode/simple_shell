#!/bin/bash

#######################################
##
##        env
##
######################################

echo "============ env =============="
command="env"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > hsh_check 2> /dev/null
env > sh_check

sleep 1


diff hsh_check sh_check

echo -e '\n'

echo "If only _ var is not correct, that is correct"

rm -f hsh_check sh_check
echo ============ end ==============


#######################################
echo -e "\n"
######################################

#######################################
##
##          env w/ parameter
##
######################################

echo "============ env /w parameter=============="
command="env CheckerIsBrocken"

rm -f hsh_check sh_check
touch hsh_check sh_check

echo -e "$command" | $SHELL > hsh_check 2> /dev/null
echo -e "$command" | sh > sh_check 2> /dev/null

sleep 1


if cmp -s "hsh_check" "sh_check"
then
    echo "OK"
else
    echo "ERROR"
fi

rm -f hsh_check sh_check
echo ============ end ==============
