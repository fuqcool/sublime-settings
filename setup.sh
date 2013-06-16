#!/usr/bin/env

cd $(dirname $0)
dir=$(pwd)

user_home=~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User

keymap_file=$user_home/Default\ \(OSX\).sublime-keymap

if [ -f "$keymap_file" ] || [ -L "$keymap_file" ]; then
    rm -f "$keymap_file"
fi

ln -s $dir/keymap.sublime-keymap "$keymap_file"
