#!/bin/sh

# e0_builtinEmacs: just for built in packages, no require and no el
rm -rf  ~/Dropbox/config/emacs/e0_builtinEmacs/*
rm -f   ~/Dropbox/config/emacs/e0_builtinEmacs/*
\ln -sfv ~/Dropbox/config/emacs/00_setEmacs/00_initEmacs/e0_builtinEmacs.init.el ~/Dropbox/config/emacs/e0_builtinEmacs/init.el
\ln -sfv ~/Dropbox/config/emacs/00_setEmacs/00_initEmacs/e0_builtinEmacs.org ~/Dropbox/config/emacs/e0_builtinEmacs/e0_builtinEmacs.org
\ln -sfv ~/Dropbox/config/emacs/00_setEmacs/00_initEmacs/orgEmacs/e09_keybindings.org ~/Dropbox/config/emacs/e0_builtinEmacs/e09_keybindings.org
