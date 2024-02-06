#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    args="."
else
    args="$@"
fi

if command -v nvim &> /dev/null; then
    editor=nvim
elif command -v vim &> /dev/null; then
    editor=vim
elif command -v vi &> /dev/null; then
    editor=vi
else
    echo "Neither vim nor neovim are installed."
    exit 1
fi

$editor "$args"
