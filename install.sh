#!/bin/bash
which nvim 2>/dev/null
if [[ $? -gt 0 ]]; then
    echo "couldn't find neovim"
fi

ln -s $(realpath init.lua) $(realpath ~/.config/nvim/init.lua)
