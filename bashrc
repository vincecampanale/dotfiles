source $(brew --prefix)/etc/bash_completion

GIT_PS1_SHOWDIRTYSTATE=1
git_prompt='$(__git_ps1)'
PS1="\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\$ "

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

export PATH="$PATH: `yarn global bin`" # Add yarn command
export PATH="$HOME/.cargo/bin:$PATH"
