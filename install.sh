which nvim 2>/dev/null
if [[ $? -gt 0 ]]; then
    echo "couldn't find neovim"
fi
