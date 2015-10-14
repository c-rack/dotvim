#!/bin/sh

cd ~
mkdir -p .vim/bundle
cd .vim/bundle
rm -rf ctrlp.vim
git clone https://github.com/kien/ctrlp.vim.git

