###########
# Aliases #
###########

alias cp='cp --interactive --verbose'
alias mv='mv --interactive --verbose'
alias rm="rm --interactive"
alias mkdir='mkdir --parents --verbose'     # Make parent directories as needed
alias ll='ls -FGlAhp'                       # Super detailed 'ls' implementation
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias f='open -a Finder ./'                 # f: Opens current dir in MacOS Finder
alias c='clear'                             # c: Clear terminal display

#############
# Functions #
#############

cd() { builtin cd "$@"; ls; } # Always list directory contents upon 'cd'
