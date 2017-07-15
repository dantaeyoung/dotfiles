dotfiles
========

.vimrc, .bashrc, .zshrc, etc

### Usage:

remove .vim/ dir, then run in repo dir:

```
ln -sfv "$(pwd)/.vim" ~
ln -sfv "$(pwd)/.vimrc" ~
ln -sfv "$(pwd)/.bashrc" ~
ln -sfv "$(pwd)/.bash_profile" ~
ln -sfv "$(pwd)/.zshrc" ~
```


one line, for my pleasure:

`ln -sfv "$(pwd)/.vim" ~ && ln -sfv "$(pwd)/.vimrc" ~ && ln -sfv "$(pwd)/.bashrc" ~ && ln -sfv "$(pwd)/.bash_profile" ~ && ln -sfv "$(pwd)/.zshrc" ~
` 

#### Vundle may have to be installed:

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

and run `VundleInstall` in vim.
