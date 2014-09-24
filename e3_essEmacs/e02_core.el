
(setq default-directory "~/Dropbox/")

(setq backup-by-copying t) ;automatically backup
;; place all auto-saves and backups in the directory pointed to by temporary-file-directory
;; (e.g., /tmp; C:/Temp/ on Windows).
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq kept-new-versions 5) ;Keep 6 newest Bankup files
(setq kept-old-versions 5) ;Keep 6 oldest Bankup files
(setq delete-old-versions t) ;Delete old versions
(setq delete-auto-save-files t)
(setq version-control t) ; Multitime backup
(setq kill-ring-max 200)
(setq delete-auto-save-files t) ; Delete Auto-save file When quit
(setq x-select-enable-clipboard t) ;; enable Copy from outside
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files

(recentf-mode 1) ; keep a list of recently opened files
(add-hook 'after-init-hook 'recentf-mode)
(setq recentf-max-saved-items 2000)
;; (setq recentf-save-file
;;       (expand-file-name
;;        (concat my:user-emacs-temporary-directory "recentf")))
(setq recentf-auto-cleanup 'never)
(run-with-idle-timer 300 t 'recentf-save-list)
(run-with-idle-timer 600 t 'recentf-cleanup)

;;(setq pop-up-frames t) ;; each file opens in a new window
;;popwin.el and e2wm.el  
(auto-image-file-mode)
(setq uniquify-buffer-name-style 'forward)
(auto-compression-mode 1)
;; (setq Man-notify-method 'pushy)
;;(setq default-abbrev-mode t)

(setq skeleton-pair t) ;; Skeleton library provides pair insertion via the skeleton-insert-maybe 
  (setq skeleton-pair-on-word t)
  ;;(global-set-key "("  'skeleton-pair-insert-maybe)
  ;;(global-set-key "["  'skeleton-pair-insert-maybe)
  (global-set-key "{"  'skeleton-pair-insert-maybe)
  (global-set-key "\"" 'skeleton-pair-insert-maybe)
  (global-set-key "\%" 'skeleton-pair-insert-maybe)
  (global-set-key "\;" 'skeleton-pair-insert-maybe)
  (global-set-key "\'" 'skeleton-pair-insert-maybe)
  (global-set-key "\`" 'skeleton-pair-insert-maybe)
  (global-set-key "\:" 'skeleton-pair-insert-maybe)
  ;;(global-set-key "<"  'skeleton-pair-insert-maybe)

(electric-pair-mode t)

(show-paren-mode t)                 ; turn paren-mode on match highlighting
 (setq show-paren-delay 0)           ; how long to wait?  default was o.15s
 (setq show-paren-style  'expression) ; highlight entire bracket expression alternatives are 'parenthesis' and 'mixed'
 (set-face-foreground    'show-paren-mismatch-face "red") 
 (set-face-background    'show-paren-match-face nil) ;; for colors change nil to color
;; (set-face-foreground    'show-paren-match-face nil)
 (set-face-attribute     'show-paren-match-face nil 
                     ;;:background nil :foreground nil
                     :underline t :weight 'extra-bold :overline nil :slant 'normal) ;; #ffff00

(setq default-tab-width 8)
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq tab-stop-list '(8 16 24 32 40 48 56 64 72 80))
(global-set-key (kbd "RET") 'newline-and-indent) ;; == C-j

(global-visual-line-mode 1) ;; Make long lines soft wrapped at word boundary 
;; (setq line-move-visual nil) ;; original behavior  with logical lines
;; line-wrap settings for code and one for text
(add-hook 'text-mode-hook '(lambda ()
    (setq truncate-lines nil
          word-wrap t)))
(add-hook 'prog-mode-hook '(lambda ()
    (setq truncate-lines t
          word-wrap nil)))

;;(set-default 'truncate-lines t)  ;;Make lines NOT soft-wrap but short lines 
  ;;(define-key global-map (kbd "C-c M-l") 'toggle-truncate-lines)
  ;; (setq truncate-partial-width-windows nil)  ;; for vertically-split windows
  ;; do not truncate and wrap long lines
  ;; (setq truncate-partial-width-windows nil)
  ;; (setq truncate-lines nil)
  ;; ;; and move up down end begin over the real visible screen lines
  ;; (require 'physical-line)
  ;; (physical-line-mode 1)
  ;; (global-set-key [(end)] 'end-of-line)
  ;; (global-set-key [(home)] 'beginning-of-line)
  ;; (add-hook 'dired-mode-hook (lambda () (setq truncate-lines t)))
  ;; (add-hook 'diff-mode-hook (lambda () (setq truncate-lines t)))
(add-hook 'minibuffer-setup-hook
      (lambda () (setq truncate-lines nil)))

;; default fill column is 70, why?
(setq default-fill-column 80) ;;60 half paper, 70, 72 good,80,120 full paper
(setq-default auto-fill-function 'do-auto-fill)
(setq sentence-end-double-space nil) ;; Sentence end with a . not with 2 spaces
;;(setq require-final-newline t) ;; End a file with a newline
(setq next-line-add-newlines nil) ;; Stop at the end of the file, not just add
;; lines
(setq paragraph-start '"^\\([　・○<\t\n\f]\\|(?[0-9a-zA-Z]+)\\)")
(setq text-mode-hook 'turn-on-auto-fill)
(setq org-mode-hook 'turn-on-auto-fill)
(setq LaTeX-mode-hook 'turn-on-auto-fill)

(require 'align)
;; >> Shell and gmt
(add-to-list 'align-rules-list
'(shell-assignment
(regexp . "\\( *\\)>>")
))
;; Shell and gmt
(add-to-list 'align-rules-list
'(lisp-assignment
(regexp . "\\( *\\)'")
))
;; R
(add-to-list 'align-rules-list
'(R-assignment
(regexp . "\\( *\\)<-")
))
;; Comment #
(add-to-list 'align-rules-list
'(comment-assignment
(regexp . "\\( *\\)#")
))
;; Python
(add-to-list 'align-rules-list
'(python-assignment
(regexp . "\\( *\\)=")
))
;; Latex &
(add-to-list 'align-rules-list
'(yatex-table
(regexp . "\\(\\s-*\\)&")
))
(global-set-key (kbd "C-c C-a") 'align)
(global-set-key (kbd "C-c M-a") 'align-regexp)

;;(cua-mode t) ;;
(setq cua-enable-cua-keys nil)  ;; disable C-c,v,x style
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour
 ;; shift + click select region
(define-key global-map (kbd "<S-down-mouse-1>") 'ignore) ; turn off font dialog
;;(define-key global-map (kbd "<S-return>") 'cua-set-mark)
(put 'mouse-set-point 'CUA 'move)
(global-set-key [f1] 'cua-mode)

(setq default-abbrev-mode t)
(setq transient-mark-mode t)
(global-auto-revert-mode 1)

(setq read-file-name-completion-ignore-case t)

(require 'org)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))  (add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.todo\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.note\\'" . org-mode))
(setq default-major-mode 'org-mode) ; for no suffix file such as README

;; Turn on Headline indent without many stars
(setq org-startup-indented nil) ;nil for show stars; t for intedent

(add-hook 'org-mode-hook (lambda () (abbrev-mode 1)))
(add-hook 'org-mode-hook 'turn-on-font-lock)    ; Org buffers only
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(add-hook 'message-mode-hook 'turn-on-orgtbl)

;; Inline Images 
  (add-hook 'org-mode-hook 'org-display-inline-images) 
  ;; Inline Images for Babel
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
  ;; Inline Images for Screenshot
  ;;(require 'org-screenshot)
  ;; iImage
;; -- Display images in org mode
;; enable image mode first
(iimage-mode)
;; add the org file link format to the iimage mode regex
(add-to-list 'iimage-mode-image-regex-alist
             (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex "\\)\\]") 1))
;; add a hook so we can display images on load
(add-hook 'org-mode-hook '(lambda () (org-turn-on-iimage-in-org)))
;; function to setup images for display on load
(defun org-turn-on-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (turn-on-iimage-mode)
  (set-face-underline-p 'org-link nil))
;; function to toggle images in a org bugger
(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (call-interactively 'iimage-mode))
;; I have this function bound to C-l with a call like this:
(define-key org-mode-map (kbd "C-S-a") 'org-archive-subtree)


  ;; (defun do-org-show-all-inline-images ()
  ;; (interactive)
  ;; (org-display-inline-images t t))
  ;; (global-set-key (kbd "C-c C-x C-v")
  ;;               'do-org-show-all-inline-images)

  ;; (setq org-export-htmlize-output-type 'css)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key [f2] 'org-mode)
(add-hook 'org-mode-hook 
          (lambda ()
            (local-set-key "\M-n" 'outline-next-visible-heading)
            (local-set-key "\M-p" 'outline-previous-visible-heading)
            ;; table
            (local-set-key "\C-\M-w" 'org-table-copy-region)
            (local-set-key "\C-\M-y" 'org-table-paste-rectangle)
            (local-set-key "\C-\M-l" 'org-table-sort-lines)
            ;; display images
            (local-set-key "\M-I" 'org-toggle-iimage-in-org)
            ;; fix tab
            (local-set-key "\C-y" 'yank)))
