#!/bin/bash

read -p "changing shell for $USER 
        New shell[$SHELL]: " PATHSHELL

if [[ $# -gt 0 ]]; then

exit 1

fi


    if [[ -z $PATHSHELL ]]; then 

    exit 

    fi


if [[ ! $PATHSHELL =~ ^/.+ ]]; then
    
    echo "chsh.sh: shell must be a full path name" 1>&2
    exit 1
fi


    if [[ ! -e $PATHSHELL ]]; then

        echo "chsh.sh: \"$PATHSHELL\" does not exist" 1>&2
        exit 1
    fi



if [[ ! -x $PATHSHELL ]]; then

    echo "chsh.sh: \"$PATHSHELL\" is not executable" 1>&2
    exit 1
fi


    egrep "$PATHSHELL" /etc/shells > /dev/null 
    if [[ $? -eq 1 ]]; then
    echo "chsh.sh: \"$PATHSHELL\" is not listed in /etc/shells" 1>&2
    exit 1
    fi


 
sed -ri "/^$USER:/s|$SHELL|$PATHSHELL|" ~/passwdcopy





