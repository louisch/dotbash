#!/usr/bin/env bash

# Full upgrade to all packages.
alias pacupg='sudo pacman -Syu'
# Commands to install packages.
alias pacin='sudo pacman -S'
alias pacins='sudo pacman -U'
# Commands to remove packages.
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Runs'
# Commadns to search repositories.
alias pacrep='pacman -Si'
alias pacreps='pacman -Ss'
# Commands to search locally.
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
# Build and install dependencies and package from
# PKGBUILD in current directory.
alias pacmake='makepkg -si'
