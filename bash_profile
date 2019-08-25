# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

source $(brew --prefix)/etc/bash_completion
GIT_PS1_SHOWDIRTYSTATE=1
git_prompt='$(__git_ps1)'

PS1="\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\$ "


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export GITHUB_USERNAME='vincecampanale'

alias greeting="echo 'hello world'"
alias gs="git status"

cdls () {
  cd "$@" && ls;
}

alias reload='source ~/.bash_profile'       # Reloads the prompt, for new modifications
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Super detailed 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias subl='sublime'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias rm="rm -i"
alias psh="python -m SimpleHTTPServer"      # psh:  Start an HTTP server at localhost:8000

export PATH="$PATH: `yarn global bin`" # Add yarn command

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH="$HOME/.cargo/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
