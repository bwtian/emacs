(add-to-list 'load-path "~/Dropbox/config/emacs/00_setEmacs/plugins.site")
(add-to-list 'load-path "~/Dropbox/config/emacs/00_setEmacs/plugins.site/auto-complete-1.3.1")
(add-to-list 'load-path "~/Dropbox/config/emacs/00_setEmacs/plugins.git/ESS.git")
(add-to-list 'load-path "~/Dropbox/config/emacs/00_setEmacs/plugins.git/ESS.git/lisp")
(add-to-list 'load-path "~/Dropbox/config/emacs/00_setEmacs/plugins.site/ess-smart-underscore-20131229.1851")
(add-to-list 'load-path "~/Dropbox/config/emacs/00_setEmacs/plugins.site/ess-R-object-popup-20130302.336")
(add-to-list 'load-path "~/Dropbox/config/emacs/00_setEmacs/plugins.git/polymode.git")
(add-to-list 'load-path "~/Dropbox/config/emacs/00_setEmacs/plugins.git/polymode.git/modes")


(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))
(require 'org)
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ess-R-font-lock-keywords (quote ((ess-R-fl-keyword:modifiers . t) (ess-R-fl-keyword:fun-defs . t) (ess-R-fl-keyword:keywords . t) (ess-R-fl-keyword:assign-ops . t) (ess-R-fl-keyword:constants . t) (ess-fl-keyword:fun-calls . t) (ess-fl-keyword:numbers . t) (ess-fl-keyword:operators . t) (ess-fl-keyword:delimiters . t) (ess-fl-keyword:= . t) (ess-R-fl-keyword:F&T . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
