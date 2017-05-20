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
    (zotxt zotelo yas-jit yafolding window-numbering window-number window-layout wc-mode wc-goal-mode visual-regexp-steroids unfill undo-tree sr-speedbar smex smartparens smart-compile sane-term r-autoyas px pos-tip popwin popup-complete polymode pcomplete-extension pcmpl-pip pcmpl-homebrew pcmpl-git pabbrev ox-reveal ox-pandoc ox-html5slide outshine outline-magic orglink org-wc org-elisp-help org-eldoc org-ac multi-term markdown-mode magic-latex-buffer latex-preview-pane latex-pretty-symbols latex-extra ipython inlineR ido-yes-or-no ido-complete-space-or-hyphen icomplete+ htmlize helm-themes helm-package helm-orgcard helm-open-github helm-mode-manager helm-ls-git helm-helm-commands helm-gtags helm-google helm-github-stars helm-git-grep helm-git-files helm-git helm-flymake helm-flycheck helm-dired-recent-dirs helm-dictionary helm-descbinds helm-company helm-chrome helm-c-yasnippet helm-bibtexkey helm-bibtex helm-backup helm-ag-r helm-ag helm-ack helm-R grass-mode graphviz-dot-mode flycheck-tip fill-column-indicator f90-interface-browser ez-query-replace ess-smart-underscore ess-R-object-popup ess-R-data-view epc ebib dropdown-list dropbox csv-mode company-math company-ess company-c-headers company-auctex color-theme-sanityinc-solarized color-theme-github cdlatex bibtex-utils bibslurp bibretrieve auto-save-buffers-enhanced auto-complete-auctex auctex-latexmk anything-replace-string anything-R ac-math ac-ja ac-ispell ac-helm ac-R))))
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
