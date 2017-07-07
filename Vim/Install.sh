#!/bin/sh

cp vimrc ~/.vimrc -f

cp -f ./colors/*.vim /usr/share/vim/vim[0-9][0-9]/colors/

mkdir -p ~/.vim/autoload ~/.vim/bundle
cd ~/.vim/

git clone https://github.com/tpope/vim-pathogen
cp vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/
rm -rf ./vim-pathogen
cd ~/.vim/bundle
git clone git://github.com/scrooloose/nerdtree.git
git clone git://github.com/vim-airline/vim-airline
git clone git://github.com/altercation/vim-colors-solarized

