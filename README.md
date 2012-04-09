# Install
Install by using `git clone`:

    git clone git://github.com/louisch/dotbash.git

You will need to create symlinks to the bash configuration files:

    mv ~/.bashrc ~/.bashrc_original
	ln -s <path/to/cloned/repo>/bashrc ~/.bashrc
	mv ~/.profile ~/.profile_original
	ln -s <path/to/cloned/repo>/profile ~/.profile
    mv ~/.bash_profile ~/.bash_profile_original
    ln -s <path/to/cloned/repo>/bash_profile ~/.bash_profile
