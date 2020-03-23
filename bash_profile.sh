source $(brew --prefix)/etc/bash_completion

GIT_PS1_SHOWDIRTYSTATE=1
git_prompt='$(__git_ps1)'
PS1="\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\$ "

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH: `yarn global bin`" # Add yarn command
export PATH="$HOME/.cargo/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

# Load rvm *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi
