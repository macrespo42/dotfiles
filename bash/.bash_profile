. "/Users/macrespo/.deno/env"

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

set -o vi

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1
export GIT_EDITOR=nvim

eval "$(/opt/homebrew/bin/brew shellenv)"
