#!/bin/bash
#
# clones vim plugin repos
#

target_dir="$(dirname $0)/bundle"
declare -a plugins=("https://github.com/itchyny/lightline.vim.git"
                    "https://github.com/scrooloose/nerdtree.git"
                    "https://github.com/myusuf3/numbers.vim.git"
                    "https://github.com/morhetz/gruvbox.git")

eval "mkdir -p ${target_dir} && cd ${target_dir}"
echo "█▓░ cloning vim plugins to ${target_dir}"

for i in "${plugins[@]}"
do
  eval "git clone ${i}"
done
