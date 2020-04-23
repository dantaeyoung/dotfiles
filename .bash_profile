if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ "$TERM" != "dumb" ]; then

    #osx compliant
    if which dircolors >/dev/null; then
      eval "$(dircolors -b)"
      alias ls='ls --color=auto'
    else
      #OSX
      export CLICOLOR=1
      export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
      alias ls='ls -F'
    fi
      #alias dir='ls --color=auto --format=vertical'
      #alias vdir='ls --color=auto --format=long'
fi


export PS1="\[\033[0;35m\]\h \[\033[1;35m\](\w) \[\033[0;35m\]> \[\033[0;37m\] \e[37m"

umask 002
EDITOR=/usr/bin/vim
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias tree="find . -not -path '*/\.*' -print | sed -e 's;[^/]*/;|;g;s;|; |;g'"


alias treefile="find . -not -path '*/\.*' | xargs -I {} bash -c 'f={}; echo \$f | sed -e \"s;[^/]*/;|;g;s;|; |;g\"; if [[ \$f == *.txt ]]; then echo; cat \$f; echo; echo; fi'"

