# dotfiles

This repository contains config files and programs that I use during my workflows. 
It installs make, gcc, g++, python, pip, git, and allows you to authenticate git via an access token.

## Installation

Clone the repository to ``.dotfiles``

`git clone https://github.com/bohnerjosh/dotfiles .dotfiles`

`cd ~/.dotfiles && make`

The helper scripts get placed into a folder named ``bin`` in your home directory. These files are symbolic links that point to the files in your downloaded repository. 

## Making changes

Modify the file you wish inside the `.dotfiles` directory. To update the links in your home directory, use the included makefile:

``make scripts``

# Instructions for authenticating git

1. Enter your Github Username
2. Enter your Github Email
3. Enter your Github Token
