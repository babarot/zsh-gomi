#!/bin/zsh

# zsh script
if [[ -n $ZSH_VERSION ]]; then

    # At first, you should install junegunn/fzf
    if (( $+commands[fzf] )); then

        # Add to the PATH
        export PATH=$PATH:${0:A:h}/bin
        fpath=(${0:A:h}/src(N-/) $fpath)
    fi
fi
