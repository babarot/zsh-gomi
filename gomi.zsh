#!/bin/zsh

if (( $+commands[fzf] )); then
    export PATH=$PATH:${0:A:h}/bin
    fpath=(${0:A:h}/src(N-/) $fpath)
fi
