#!/bin/sh

cd ~
mkdir -p .vim/bundle
cd .vim/bundle
rm -rf ctrlp.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git
rm -rf vim-pony
git clone https://github.com/jakwings/vim-pony.git

