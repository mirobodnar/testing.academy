#!/bin/bash



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
