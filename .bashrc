# ~/.bashrc: executed for non-login shells

if [ "$TERM" != "dumb" ]; then

    #osx compliant
#	alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
	alias vim='/usr/bin/vim'
	alias vi='/usr/bin/vim'

    if which dircolors >/dev/null; then
      eval "$(dircolors -b)"
      alias ls='ls --color=auto'
    else
      #OSX
      export CLICOLOR=1
      alias ls='ls -G'
    fi
      #alias dir='ls --color=auto --format=vertical'
      #alias vdir='ls --color=auto --format=long'
fi

export CLICOLOR=1

umask 002
EDITOR=/usr/bin/vim
PS1="[\u@\H:\w ] $ "

export TZ=America/New_York

alias vi='/usr/bin/vim'


export DOTFILESPATH="$HOME/github/dotfiles"
source $DOTFILESPATH/config/bash/path
#source $DOTFILESPATH/config/bash/secrets
export PATH="$PATH:$HOME/bin"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(pyenv init -)"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PATH=/Users/provolot/.local/bin:$PATH
