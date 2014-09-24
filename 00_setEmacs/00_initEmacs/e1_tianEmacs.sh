#!/bin/sh
# e1_tianEmacs:  for all packages and best use of Emacs
# rm -rf  ~/SparkleShare/emacs.d/e1_tianEmacs/*
rm -f   ~/SparkleShare/emacs.d/e1_tianEmacs/*
# elpa as main repo, share for snipnnets
\ln -sfv ~/SparkleShare/emacs.d/00_setEmacs/elpa/ ~/SparkleShare/emacs.d/e1_tianEmacs/elpa
\ln -sfv ~/SparkleShare/emacs.d/00_setEmacs/share/ ~/SparkleShare/emacs.d/e1_tianEmacs/share

## init file for path and startup
\ln -sfv ~/SparkleShare/emacs.d/00_setEmacs/00_initEmacs/e1_tianEmacs.init.el ~/SparkleShare/emacs.d/e1_tianEmacs/init.el
# org fiel for all in orgEmacs for setting up emacs
\ln -sfv ~/SparkleShare/emacs.d/00_setEmacs/00_initEmacs/orgEmacs/* ~/SparkleShare/emacs.d/e1_tianEmacs/
