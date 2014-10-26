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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex -synctex=1")
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes (quote ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(ess-R-font-lock-keywords (quote ((ess-R-fl-keyword:modifiers . t) (ess-R-fl-keyword:fun-defs . t) (ess-R-fl-keyword:keywords . t) (ess-R-fl-keyword:assign-ops . t) (ess-R-fl-keyword:constants . t) (ess-fl-keyword:fun-calls . t) (ess-fl-keyword:numbers . t) (ess-fl-keyword:operators . t) (ess-fl-keyword:delimiters . t) (ess-fl-keyword:= . t) (ess-R-fl-keyword:F&T . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common ((t (:inherit company-preview))))
 '(company-tooltip ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-common ((((type x)) (:inherit company-tooltip :weight bold)) (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection ((((type x)) (:inherit company-tooltip-selection :weight bold)) (t (:inherit company-tooltip-selection))))
 '(company-tooltip-selection ((t (:background "steelblue" :foreground "white")))))
