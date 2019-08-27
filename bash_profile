source $(brew --prefix)/etc/bash_completion
GIT_PS1_SHOWDIRTYSTATE=1
git_prompt='$(__git_ps1)'

PS1="\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export GITHUB_USERNAME='vincecampanale'

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Super detailed 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias f='open -a Finder ./'                 # f: Opens current dir in MacOS Finder
alias c='clear'                             # c:            Clear terminal display
alias rm="rm -i"

export PATH="$PATH: `yarn global bin`" # Add yarn command

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="$HOME/.cargo/bin:$PATH"
