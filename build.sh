#!/bin/bash 

sudo docker build -t freehycon . 

dangling=$(docker images -q -f dangling=true | wc -l)
if [ "$dangling" -gt 0 ]; then 
    sudo docker rmi $(docker images -q -f dangling=true)
fi

