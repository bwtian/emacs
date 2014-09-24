#!/bin/sh
# e1_tianEmacs:  for all packages and best use of Emacs
# rm -rf  ~/Dropbox/config/emacs/e1_tianEmacs/*
rm -f   ~/Dropbox/config/emacs/e1_tianEmacs/*
# elpa as main repo, share for snipnnets
\ln -sfv ~/Dropbox/config/emacs/00_setEmacs/elpa/ ~/Dropbox/config/emacs/e1_tianEmacs/elpa
\ln -sfv ~/Dropbox/config/emacs/00_setEmacs/share/ ~/Dropbox/config/emacs/e1_tianEmacs/share

## init file for path and startup
\ln -sfv ~/Dropbox/config/emacs/00_setEmacs/00_initEmacs/e1_tianEmacs.init.el ~/Dropbox/config/emacs/e1_tianEmacs/init.el
# org fiel for all in orgEmacs for setting up emacs
\ln -sfv ~/Dropbox/config/emacs/00_setEmacs/00_initEmacs/orgEmacs/* ~/Dropbox/config/emacs/e1_tianEmacs/
