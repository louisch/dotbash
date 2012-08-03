#!/usr/bin/env bash

for file in .bashrc .bash_profile .inputrc .profile; do
    if [[ -e ~/"$file" ]]; then
	mv ~/"$file" ~/"$file"_original
    fi
    ln -s ~/.bash/"${file:1}" ~/"$file"
done
