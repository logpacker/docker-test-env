#!/bin/bash

# generate random lines
OUTPUT_FILE="test.log"

while true
do 
    _RND_LENGTH=`awk -v min=1 -v max=100 'BEGIN{srand(); print int(min+rand()*(max-min+1))}'`
    _RND=$(( ( RANDOM % 100 )  + 1 ))
    _A="[$RANDOM-$_RND] $(dd if=/dev/urandom bs=$_RND_LENGTH count=1 2>/dev/null | base64 | tr = d)"; 
    echo $_A; 
    echo $_A >> /tmp/logpacker/lptest.$_RND.$OUTPUT_FILE; 
done
