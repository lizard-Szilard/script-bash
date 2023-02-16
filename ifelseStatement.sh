#!/bin/bash

## if else statement https://linuxize.com/post/bash-if-else-statement/ 
## variable https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-5.html 
echo -n "Enter a number: "
read VAR

if [[ $VAR -gt 10 ]]; then
    echo "The variable is greater than 10."
elif [[ $VAR -lt 10 ]]; then
    echo "The variable is less than 10."
elif [[ $VAR -eq 10 ]]; then
    echo "The variable is equal to 10."
fi
