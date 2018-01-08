#!/bin/bash

AGAIN=1

while  [ "$AGAIN" = "1" ] || [ "$AGAIN" = "y" ] 
do
    SECRET=$(($RANDOM % 21 ))
    TIP=0
    POKUS=5
    
    echo "myslim si cislo od 1 do 20"

        while>[[ -z $TIP ]] || [[ ! $TIP =~ ^[0-9]+$ ]] || [[ $TIP -lt 1 ]] || [[ $TIP -gt 20 ]] && echo "ta ty co pises? sak si myslim cislo od 1 do 20"        

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
       done

if [ $TIP -ne $SECRET ]; then

echo "si tupec, lebo si uz nemas pokusy, moje cislo bolo $SECRET "
fi

read -p "ak chces hrat znova stlac 1 alebo y, ak nie stlac inu klavesu " AGAIN

done

echo "dakujem za hru"
