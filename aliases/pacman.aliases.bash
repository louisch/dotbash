#!/usr/bin/env bash

if [[ -e '/usr/bin/yaourt' ]]; then
    pac_command='yaourt'
    spac_command=false
elif [[ -e '/usr/bin/pacman-color' ]]; then
    pac_command='pacman-color'
elif [[ -e '/usr/bin/pacman' ]]; then
    pac_command='pacman'
else
    pac_command='exit'   
fi
if [[ $pac_command != 'exit' ]]; then
    if $spac_command; then
        spac_command='sudo '"$pac_command"
    else
        spac_command="$pac_command"
    fi
    # Full upgrade to all packages.
    if [[ $pac_command='yaourt' ]]; then
        alias pacupg="yaourt -Syu --aur"
    else
        alias pacupg="$spac_command -Syu"
    fi
    # Commands to install packages.
    alias pacin="$spac_command -S"
    alias pacins="$spac_command -U"
    # Commands to remove packages.
    alias pacre="$spac_command -R"
    alias pacrem="$spac_command -Runs"
    # Commadns to search repositories.
    alias pacrep="$pac_command -Si"
    alias pacreps="$pac_command -Ss"
    # Commands to search locally.
    alias pacloc="$pac_command -Qi"
    alias paclocs="$pac_command -Qs"
    # Build and install dependencies and package from
    # PKGBUILD in current directory.
    alias pacmake="makepkg -si"
fi
