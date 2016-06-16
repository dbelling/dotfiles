#!/bin/bash
#########################
# Creates symlinks from the home directory to dotfiles found in ~/dotfiles
#########################

########## Variables

dir=~/dotfiles		    # dotfiles directory
files="alias gemrc gitconfig gitignore hushlogin psqlrc vimrc zshrc"

# symlink dotfiles to home directory
for file in $files; do
    ln -sf $dir/$file ~/.$file
done
