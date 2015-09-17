dotfiles
========

.vimrc, .bashrc, etc

Usage:

remove .vim/ dir, then:

```
ln -snf dotfiles/.vim .vim
ln -sf dotfiles/.vimrc .vimrc
ln -sf dotfiles/.bashrc .bashrc
ln -sf dotfiles/.bash_profile .bash_profile
```

one line, for my pleasure:

`ln -snf dotfiles/.vim .vim && ln -sf dotfiles/.vimrc .vimrc && ln -sf dotfiles/.bashrc .bashrc && ln -sf dotfiles/.bash_profile .bash_profile`
