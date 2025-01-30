

echo 'Hello from .zshrc'


# set variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# change zsh options


# create aliases
alias ls='ls -lAFhG'

# customize prompts
PROMPT='
%1~ %L %# ' 

RPROMPT='%*' # time stamp

# add locations to $PATH variable


# write handy functions
function mkcd () {
    mkdir -p "$@" && cd "$_";
    }

# use zsh plugins


# and more...

