#!/bin/bash

# Check if GHCup path is already in .bashrc
if ! grep -q "export PATH=\"\$HOME/.ghcup/bin:\$PATH\"" ~/.bashrc; then
    echo -e "\n# Add GHCup to PATH\nexport PATH=\"\$HOME/.ghcup/bin:\$PATH\"" >> ~/.bashrc
    echo "Added GHCup to PATH in ~/.bashrc"
else
    echo "GHCup is already in PATH in ~/.bashrc"
fi

echo "Please run 'source ~/.bashrc' or restart your terminal to apply the changes."
