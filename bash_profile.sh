##########
# Prompt #
##########

GIT_PS1_SHOWDIRTYSTATE=1
git_prompt='$(__git_ps1)'
PS1="\[\e[33m\]  \d \t \w$git_prompt\n\[\e[m\]\$ "

########
# PATH #
########

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH: `yarn global bin`" # Add yarn command
export PATH="$HOME/.cargo/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

# Load rvm *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

######################
# Completion plugins #
######################

source $(brew --prefix)/etc/bash_completion

##########
# bashrc #
##########

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f ~/.bash_profile.overrides ]; then
    source ~/.bash_profile.overrides
fi
