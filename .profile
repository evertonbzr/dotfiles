# autoload
# autoload -U compinit
# compinit -i

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Dotfiles config alias
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Node & nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias p=pnpm # pnpm alias

# WSL related
alias wsl=wsl.exe
alias wsls='wsl.exe --shutdown'
alias exp=explorer.exe
alias dev='cd ~/dev'
alias y='yarn'


# bun completions
[ -s "/home/hzk/.bun/_bun" ] && source "/home/hzk/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go
# export PATH=$PATH:/usr/local/go/bin

# function notty() {
#   true | ($@) 2>&1 | cat
# }
