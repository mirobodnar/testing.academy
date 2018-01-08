#!/bin/bash

if [[ $# -eq 0 ]]; then

    TIME=$(date +%k) 

    if [[ $TIME -lt 8 ]]; then
        echo "Dobre ranko $USER, si makac"

    else 
        if [[ $TIME -ge 8 ]] && [[ $TIME -lt 19 ]]; then
            echo "Dobry den $USER, si makac"
    
        else
            echo "Dobry vecer $USER, si makac"

        fi

    fi
    echo $TIME


else 
    if [[ $1 =~ ^[0-9]+$ ]] && [[ $1 -ge 1 ]] && [[ $1 -le 23 ]] && [[ $# -eq 1 ]]; then

        if [[ $1 -lt 8 ]]; then
                echo "Dobre ranko $USER, si makac"

            else 
                if [[ $1 -ge 8 ]] && [[ $1 -lt 19 ]]; then
                    echo "Dobry den $USER, si makac"
    
                else
                    echo "Dobry vecer $USER, si makac"

        
                fi
        fi
    else 
        echo "zadaj normalny cas"

        
    fi
fi







