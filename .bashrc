# ~/.bashrc: executed for non-login shells

if [ "$TERM" != "dumb" ]; then

    #osx compliant
#	alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
	alias vim='/usr/local/bin/nvim'
	alias vi='/usr/local/bin/nvim'

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
EDITOR=/usr/local/bin/nvim
PS1="[\u@\H:\w ] $ "

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export TZ=America/New_York



export NVM_DIR="/Users/provolot/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


. /Users/provolot/torch/install/bin/torch-activate
