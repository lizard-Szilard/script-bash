#!/bin/bash
##############################
# [lizard-Szilard/script-bash](https://github.com/lizard-Szilard/script-bash) 
#
# With this script, users can find notes about tools were written in config
# file as comments such as Vim keybinding or Git workflow.
#
# merge with new line in Windows Os `\r\n`
# command -p paste -z -d "\n" *.txt .
#
# function reference https://linuxize.com/post/bash-functions/ .
#
# The `merge_search.sh` script results can be viewed in nvim by using 
# `$ sh merge_search.sh | nvim -R -`. If preferred, the user can replace nvim with `more` or another tool.
# The search functionality in nvim allows searching in normal mode using `/`.
#############################

filter_array=()

function check_if_exist () {
    # List source
    local bashrc="$HOME/.bashrc"
    local bash_profile="$HOME/.bash_profile"
    local bash_alias="$HOME/.bash_aliases"
    local nvim="$HOME/.config/nvim/init.vim"
    local vimrc="$HOME/.vimrc"

    # print source
    #echo -e "\n\n merger file: \n$bashrc\n$bash_profile\n$bash_alias\n$nvim\n$vimrc"

    Array=("$bashrc" "$bash_profile" "$bash_alias" "$nvim" "$vimrc")

    printf "Source list:\n"

    for source in "${Array[@]}"; do
        printf "\n%s\n" "$source"

        if [[ -f "$source" ]]; then
            filter_array+=("$source")
        fi

    done
}

function merge_paste {
    printf "\nObtain the Source:\n\n"

    command -p paste -z -d "\n" "${filter_array[@]}"

    echo -e "\n\n Source File: \n"
    for i in "${filter_array[@]}"; do
        echo "$i"
    done
}

check_if_exist 
merge_paste


