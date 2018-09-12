#!/bin/sh

git clone -q https://github.com/ofalk/vimconfig.git vimconfig.ofalk.git
pushd vimconfig.ofalk.git
if [ -e ~/.vim ]; then
	mv ~/.vim ~/.vim.old
fi
ln -sf `pwd` ~/.vim
if [ -e ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.old
fi
ln -sf `pwd`/.vimrc ~/.vimrc
popd
vim +BundleInstall
