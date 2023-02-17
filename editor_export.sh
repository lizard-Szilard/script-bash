#!/bin/bash

###############################################################################################
## export EDITOR
## useful for git, chezmoi, kitty etc.
## `-x` is check if type **executable** https://tldp.org/LDP/abs/html/fto.html 
## https://www.delftstack.com/howto/linux/bash-check-if-command-exists/ 
## https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script 
#
## Reason why use $VISUAL
## https://unix.stackexchange.com/questions/73484/how-can-i-set-vi-as-my-default-editor-in-unix

################################
# Prefer to invoke commands directly using the command shell builtin.
# This way, your code will always execute the command you wanted and 
# not an alias/function that overrides the name of the command. 
if [[ -x $(command -v nvim) ]]; then
    export VISUAL=nvim
    export EDITOR="$VISUAL"
elif [[ -x $(command -v vim) ]]; then
    export VISUAL=vim
    export EDITOR="$VISUAL"
elif [[ -x $(command -v vi) ]]; then
    export VISUAL=vi
    export EDITOR="$VISUAL"
fi
