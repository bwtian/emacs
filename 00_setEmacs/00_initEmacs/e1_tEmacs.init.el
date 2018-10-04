;;;; package system,ELPA:Emacs Lisp Package Archive

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
  ;;  ;; auto installed package
  (when (not package-archive-contents)
    (package-refresh-contents))

  ;; setting default package to be installed
  (defvar my-default-packages  '(
				org
				))

  (dolist (p my-default-packages)
     (when (not (package-installed-p p))
       (package-install p)))

(require 'cl)
(require 'package)
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("original"  . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)

(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))
(require 'org)
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ess-R-font-lock-keywords
   (quote
    ((ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops . t)
     (ess-R-fl-keyword:constants . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers . t)
     (ess-fl-keyword:operators . t)
     (ess-fl-keyword:delimiters . t)
     (ess-fl-keyword:= . t)
     (ess-R-fl-keyword:F&T . t))))
 '(package-selected-packages
   (quote
    (yas-jit wc-mode wc-goal-mode unfill undo-tree r-autoyas px popup-complete pcomplete-extension pcmpl-pip ox-html5slide outline-magic org-elisp-help org-eldoc org-ac ipython inlineR ido-complete-space-or-hyphen htmlize helm-helm-commands helm-git-files helm-git helm-dired-recent-dirs helm-bibtexkey helm-ag-r helm-ack helm-R f90-interface-browser ez-query-replace ess-R-object-popup ess-R-data-view epc dropdown-list dropbox csv-mode company-ess color-theme-github cdlatex bibretrieve auto-save-buffers-enhanced auto-complete-auctex anything-replace-string anything-R ac-math ac-ja ac-helm ac-R))))
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
