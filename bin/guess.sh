#!/bin/bash

AGAIN=1

while  [ "$AGAIN" = "1" ] || [ "$AGAIN" = "y" ] 
do
    SECRET=$(($RANDOM % 21 ))
    TIP=0
    POKUS=5
    
    echo "myslim si cislo od 1 do 20"

    while [ $TIP -ne $SECRET ] && [ $POKUS -gt 0 ] 
    do
        read -p "zadaj tip: " TIP

        echo "tvoj tip je:$TIP"

        if [ $TIP -gt $SECRET ]; then 
                echo "moje cislo je mensie ako $TIP"

        else

            if [ $TIP -lt $SECRET ]; then
                echo "moje cislo je vacsie ako $TIP"
            
            else 
                echo "si genius"
            fi
        fi
    if [[ $TIP =~ $[0-9] |  $ ]]; then
    echo "co si dilino sak len cisla od 1 do 20 "
    POKUS=$(($POKUS +0))
    echo "ale nebudem ti to pocitat ako pokus, stale mas $POKUS"
    else

    POKUS=$(($POKUS -1 )) 
    echo "mas este $POKUS pokusy"
    fi
    done

if [ $TIP -ne $SECRET ]; then

echo "si tupec, lebo si uz nemas pokusy, moje cislo bolo $SECRET "
fi

read -p "ak chces hrat znova stlac 1 alebo y, ak nie stlac inu klavesu " AGAIN

done

echo "dakujem za hru"
