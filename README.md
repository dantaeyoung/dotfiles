dotfiles
========

.vimrc, .bashrc, etc

### Usage:

remove .vim/ dir, then run in repo dir:

```
ln -snf dotfiles/.vim/ ~/.vim/
ln -sf dotfiles/.vimrc ~/.vimrc
ln -sf dotfiles/.bashrc ~/.bashrc
ln -sf dotfiles/.bash_profile ~/.bash_profile
```

one line, for my pleasure:

`ln -snf dotfiles/.vim/ ~/.vim/ && ln -sf dotfiles/.vimrc ~/.vimrc && ln -sf dotfiles/.bashrc ~/.bashrc && ln -sf dotfiles/.bash_profile ~/.bash_profile`

#### Vundle may have to be installed:

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

and run `VundleInstall` in vim.
