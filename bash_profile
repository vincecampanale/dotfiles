alias cp='cp -iv'                           #
alias mv='mv -iv'                           # Confirm move and say what happened
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Super detailed 'ls' implementation
cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias f='open -a Finder ./'                 # f: Opens current dir in MacOS Finder
alias c='clear'                             # c: Clear terminal display
alias rm="rm -i"

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
