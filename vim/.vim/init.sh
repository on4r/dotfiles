#!/bin/sh
#
# clones vim plugin repos
#

DIR="bundle"
declare -a arr=("https://github.com/itchyny/lightline.vim.git"
                "https://github.com/scrooloose/nerdtree.git"
                "https://github.com/myusuf3/numbers.vim.git"
                "https://github.com/morhetz/gruvbox.git")

eval "mkdir -p ${DIR} && cd ${DIR}"

for i in "${arr[@]}"
do
  eval "git clone ${i}"
done
