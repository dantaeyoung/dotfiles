

if [ "$TERM" != "dumb" ]; then

    #osx compliant
    if which dircolors >/dev/null; then
      eval "$(dircolors -b)"
      alias ls='ls --color=auto'
    else
      export CLICOLOR=1
    fi
      #alias dir='ls --color=auto --format=vertical'
      #alias vdir='ls --color=auto --format=long'
fi

umask 002
EDITOR=/usr/bin/vim
PS1="[\u@\H:\w ] $ "

