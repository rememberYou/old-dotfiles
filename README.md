![Dotfiles Logo](assets/dotfiles-logo.png "Dotfiles logo")
===============================

This repository contains all of my old dotfiles configuration.

List of files:

```
 bin            ➔ various useful scripts (offlineimap, etc)
 offlineimap    ➔ capable of synchronizing mail on IMAP server with local Maildir folder
```

--------------------

### Dotfiles manager ###

I'm using [GNU Stow](https://www.gnu.org/software/stow/) a free, lightweight
dotfiles manager written in Perl to manages my dotfiles.

What's make differentiates it from other dotfiles managers is that it does
not require various Python, Ruby or Perl dependencies like most dotfiles
manager.

With that, it is easy to share files among multiple users or computers with a
few command lines.

--------------------

### Getting started ###

No matter what your Linux distribution, `stow` can easily be installed according
to your package manager:

	sudo pacman -S stow
	sudo apt-get install stow

For macOS users:

	brew install stow

Once the installation is complete, make a clone of the repository:

	git clone https://github.com/rememberYou/dotfiles.git

You can now install any configurations you wish to copy using GNU Stow:

```bash
# Make sure you are in the right directory
cd dotfiles

# Example to install the offlineimap config
stow offlineimap

# Uninstall the sway config
stow -D offlineimap
```

If you want to install all the configurations, you can do it directly
with
[`stowsym.sh`](https://github.com/rememberYou/dotfiles/blob/master/stowsym.sh):

```bash
# Change permission to execute the script
chmod +x stowsym.sh

# Installation of configuration files
./stowsym.sh -i

# Deletion of configuration files
./stowsym.sh -d
```

Easy, isn't it? For those who want to find my Emacs configuration files, they
are available: [here](https://github.com/rememberYou/.emacs.d/).

--------------------

### Contributions ###

Various functions may be optimized or spelling errors may occur. If you want to
make your own correction on these dotfiles, you are free to do so.

Please note that I can't guarantee that your changes will be accepted.

--------------------

### License ###

The code is unlicensed, take what you like and hope that thes dotfiles can be so
useful to you that it is for me.
