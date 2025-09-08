# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
. "/Users/macrespo/.deno/env"

export EDITOR="nvim"

alias py="python3"
alias python="python3"
alias pip3="pip"
alias d="docker"
alias lzd="lazydocker"
alias lzg="lazygit"
alias vim="nvim"

# better built-in
alias cat="bat --theme=Dracula"
alias ls="lsd"

export oracle="79.72.31.124"
export PATH=$PATH:$(go env GOPATH)/bin

eval "$(starship init bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
