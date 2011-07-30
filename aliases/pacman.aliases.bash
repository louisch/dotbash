#!/usr/bin/env bash

alias pacupg='sudo packer -Syu --noedit'
# Full upgrade to all packages.
alias pacin='sudo packer -S --noedit'
alias pacinedit='sudo packer -S'
alias pacins='sudo pacman -U'
# Commands to install packages.
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Runs'
# Commands to remove packages.
alias pacrep='sudo packer -Si'
alias pacreps='sudo packer -Ss'
# Commadns to search repositories.
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
# Commands to search locally.
alias pactarball='sudo packer -G'
# Install from a tarball (AUR).
