#!/usr/bin/env sh

# Setup for storing doftiles in a bare Git repository
# https://www.atlassian.com/git/tutorials/dotfiles

git init --bare "$HOME"/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --working-tree=$HOME'
config config --local status.showUntrackedFiles no
