#!/usr/bin/env

function link_file() {
    if [ -f "$2" ] || [ -L "$2" ]; then
        rm -f "$2"
    fi

    ln -s "$1" "$2"
}

cd $(dirname $0)
dir=$(pwd)

user_home=~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User

keymap_file=$user_home/Default\ \(OSX\).sublime-keymap
pref_file=$user_home/Preferences.sublime-settings

link_file $dir/keymap.sublime-keymap "$keymap_file"
link_file $dir/preferences.sublime-settings "$pref_file"
