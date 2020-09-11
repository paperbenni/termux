#!/bin/bash

clear

alias a="cd ~/storage/shared"
alias q=exit
alias v=nvim

set -o vi

export PATH=$PATH:~/bin

yt(){
    if ! [ -e ~/storage/shared/Music ]
    then
        echo "please set up your music directory first"
        return 1
    fi

    cd ~/storage/shared/Music
    youtube-dl -x "$@"
}

