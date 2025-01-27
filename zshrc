

echo 'Hello from .zshrc'


# set variables


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

