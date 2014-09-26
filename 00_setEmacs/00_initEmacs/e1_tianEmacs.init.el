;;;; package system,ELPA:Emacs Lisp Package Archive
   (require 'cl)
   (require 'package)
   ;;(setq package-user-dir "~/Dropbox/config/emacs/00_setEmacs/elpa")
   ;;;; Add Archive Source
   (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
   (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
   (add-to-list 'package-archives '("original"  . "http://tromey.com/elpa/") t)
   (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
   (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)

   ;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
   ;;                          ("original"    . "http://tromey.com/elpa/")
   ;;                          ("org"         . "http://orgmode.org/elpa/")
   ;;                          ("marmalade"   . "http://marmalade-repo.org/packages/")
   ;;                          ("melpa"       . "http://melpa.milkbox.net/packages/")
   ;;                          ))
   ;;    (push '("Orgmode" . "http://orgmode.org/pkg/daily/";) 
   ;; package-archives))
   ;; basic initialization, (require) non-ELPA packages, etc.
   ;;(setq package-enable-at-startup nil)
   (package-initialize)
   ;; (require) your ELPA packages, configure them as normal
   
  ;;  ;; auto installed package
  (when (not package-archive-contents)
    (package-refresh-contents))
  
  ;; setting default package to be installed
  (defvar my-default-packages  '(
                                ess
                                org
				 ))

  (dolist (p my-default-packages)
     (when (not (package-installed-p p))
       (package-install p)))
;; Init file after (package-initialize) for newest org  mode
  ;; Org-mode that was shipped with Emacs
  ;; (setq load-path (remove-if (lambda (x) (string-match-p "org$" x)) load-path))
  ;; ELPA 
  ;; (setq load-path (remove-if (lambda (x) (string-match-p "org-20" x)) load-path))
  ;; (setq custom-org-path "~/.emacs.d/org-8.2.4/lisp")
  ;;  (add-to-list 'load-path custom-org-path)
(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))
(require 'org)
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))
