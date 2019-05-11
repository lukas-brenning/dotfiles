export PATH="/usr/local/bin:$PATH"

# HOMEBREW SPECIFIC COMMANDS
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

# JUPYTER NOTEBOOK SPECIFIC COMMANDS
alias jn='jupyter notebook'

# RSTUDIO SPECIFIC COMMANDS
alias Rstudio='open -a Rstudio'

# GIT SPECIFIC COMMANDS
alias gs='git status'
alias gb='git branch'
alias ga='git add'
alias gc='git commit -m'
alias gl='git log'
alias glo='git log --oneline'

# GENERIC COMMANDS
alias ll='ls -l'
alias lla='ls -l -a'

source ~/git-completion.bash

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
 __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
 source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
