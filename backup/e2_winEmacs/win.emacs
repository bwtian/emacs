1;; *********************************************************************
;; .emacs - an emacs initialization file
;; *** ********************************************************************
;; http://vgoulet.act.ulaval.ca/en/emacs/windows/ Download windows-modified version
;; Especially for windows set
(setenv "HOME" "C:/")
(setenv "PATH" "C:/")

;;set the default file path in Windows Systems
;; Solution 1: Add (cd "C:/Users/Name/Desktop") to the .emacs file
;; Solution 2: Add (setq default-directory "C:/Documents and Settings/USER NAME/Desktop/" ) to the .emacs file
;; Solution 3: Right click the emacs short cut, hit
;; properties and change the start in field to the desired directory.
;; Solution 4: (global-set-key (kbd "C-x C-f")  (lambda () (interactive)
;;                                     (cd "somePathHere")
;;                                     (call-interactively 'find-file)))
;; My solution
(setq default-directory "~/Dropbox/")

;; Load Init file, Parts of .emacs
(load "~/Dropbox/config/emacs/emacs.d/init.el")