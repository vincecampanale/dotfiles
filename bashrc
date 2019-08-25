export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

# tmux
if which tmux >/dev/null 2>&1; then
  # if not inside a tmux session, and if no session is started, start a new session
  test -z "$TMUX" && (tmux attach || tmux || tmux new-session)
fi

### Aliases ###
alias serve="python -m SimpleHTTPServer"
 
