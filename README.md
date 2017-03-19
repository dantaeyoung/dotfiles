dotfiles
========

.vimrc, .bashrc, etc

### Usage:

remove .vim/ dir, then run in repo dir:

```
ln -sfv ./.vim ~
ln -sfv ./.vimrc ~
ln -sfv ./.bashrc ~
ln -sfv ./.bash_profile ~
```

one line, for my pleasure:

`ln -sfv ./.vim ~ && ln -sfv ./.vimrc ~ && ln -sfv ./.bashrc ~ && ln -sfv ./.bash_profile ~ `

#### Vundle may have to be installed:

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

and run `VundleInstall` in vim.
