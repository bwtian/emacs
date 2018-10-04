@echo off
rd /s /q /f C:\Users\willin\.emacs.d
del /s /q /f C:\Users\willin\.emacs.d
mklink /D  C:\Users\willin\.emacs.d  C:\Users\willin\Dropbox\config\emacs\e1_tianEmacs