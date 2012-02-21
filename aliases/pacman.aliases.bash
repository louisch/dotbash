#!/usr/bin/env bash

alias pacman='pacman-color'
# Full upgrade to all packages.
alias pacupg='sudo pacman -Syu && pacaur -u'
# Commands to install packages.
alias pacin='pacaur -S'
alias pacins='sudo pacman -U'
# Commands to remove packages.
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Runs'
# Commadns to search repositories.
alias pacrep='pacaur -Si'
alias pacreps='pacaur -Ss'
# Commands to search locally.
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
# Build and install dependencies and package from
# PKGBUILD in current directory.
alias pacmake='makepkg -si'
