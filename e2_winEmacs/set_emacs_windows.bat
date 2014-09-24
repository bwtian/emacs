@echo off
rd /s /q /f C:\Users\phd\.emacs.d
del /s /q /f C:\Users\phd\.emacs.d
mklink /D  C:\Users\phd\.emacs.d  C:\Air\Dropbox\config\emacs\e1_tianEmacs