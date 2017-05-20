;;(load "folding" 'nomessage 'noerror)
;;(folding-mode-add-find-file-hook)

(require 'yafolding)
(add-hook 'ess-mode-hook
            '(lambda() (yafolding-mode)))
(add-hook 'LaTex-mode-hook
            '(lambda() (yafolding-mode)))

;;(setq outline-minor-mode-prefix [(control o)]) ;;reset outline mode prefix     

; Outline-minor-mode key map
 (define-prefix-command 'cm-map nil "Outline-")
 ; HIDE
 (define-key cm-map "q" 'hide-sublevels)    ; Hide everything but the top-level headings
 (define-key cm-map "t" 'hide-body)         ; Hide everything but headings (all body lines)
 (define-key cm-map "o" 'hide-other)        ; Hide other branches
 (define-key cm-map "c" 'hide-entry)        ; Hide this entry's body
 (define-key cm-map "l" 'hide-leaves)       ; Hide body lines in this entry and sub-entries
 (define-key cm-map "d" 'hide-subtree)      ; Hide everything in this entry and sub-entries
 ; SHOW
 (define-key cm-map "a" 'show-all)          ; Show (expand) everything
 (define-key cm-map "e" 'show-entry)        ; Show this heading's body
 (define-key cm-map "i" 'show-children)     ; Show this heading's immediate child sub-headings
 (define-key cm-map "k" 'show-branches)     ; Show all sub-headings under this heading
 (define-key cm-map "s" 'show-subtree)      ; Show (expand) everything in this heading & below
 ; MOVE
 (define-key cm-map "u" 'outline-up-heading)                ; Up
 (define-key cm-map "n" 'outline-next-visible-heading)      ; Next
 (define-key cm-map "p" 'outline-previous-visible-heading)  ; Previous
 (define-key cm-map "f" 'outline-forward-same-level)        ; Forward - same level
 (define-key cm-map "b" 'outline-backward-same-level)       ; Backward - same level
 (global-set-key "\M-o" cm-map)

(eval-after-load 'outline
  '(progn
    (require 'outline-magic)
    (define-key outline-minor-mode-map (kbd "<C-S-tab>") 'outline-cycle)))

;; (require 'outshine)
;; (add-hook 'outline-minor-mode-hook 'outshine-hook-function)
;; (add-hook 'org-mode-hook
;;           (lambda ()
;;             ;; Redefine arrow keys, since promoting/demoting and moving
;;             ;; subtrees up and down are less frequent tasks then
;;             ;; navigation and visibility cycling
;;             (when (require 'outshine nil 'NOERROR)
;;               (org-defkey org-mode-map
;;                           (kbd "M-<left>") 'outline-hide-more)
;;               (org-defkey org-mode-map
;;                           (kbd "M-<right>") 'outline-show-more)
;;               (org-defkey org-mode-map
;;                           (kbd "M-<up>") 'outline-previous-visible-heading)
;;               (org-defkey org-mode-map
;;                           (kbd "M-<down>") 'outline-next-visible-heading)))
;;           'append)

(add-hook 'emacs-lisp-mode-hook 'outline-minor-mode)
(add-hook 'TeXinfo-mode-hook 'outline-minor-mode)   
(add-hook 'LaTeX-mode-hook 'outline-minor-mode)   
(add-hook 'ess-mode-hook  'outline-minor-mode)   
(add-hook 'Rnw-mode-hook  'outline-minor-mode)   

;;(add-hook 'LaTeX-mode-hook '(lambda () (outline-minor-mode t)))

(add-hook 'ess-mode-hook
            '(lambda ()
               (outline-minor-mode)
               (setq outline-regexp "\\(^#\\{4,5\\} \\)\\|\\(^[a-zA-Z0-9_\.]+ ?<-?function(.*{\\)")
               (defun outline-level ()
                 (cond ((looking-at "^##### ") 1)
                   ((looking-at "^#### ") 2)
                   ((looking-at "^[a-zA-Z0-9_\.]+ ?<- ?function(.*{") 3)
                   (t 1000)))
               ))
;;; Java
  ;; (setq outline-regexp "\\(?:\\([ \t]*.*\\(class\\|interface\\)[ \t]+[a-zA-Z0-9_]+[ \t\n]*\\({\\|extends\\|implements\\)\\)\\|[ \t]*\\(public\\|private\\|static\\|final\\|native\\|synchronized\\|transient\\|volatile\\|strictfp\\| \\|\t\\)*[ \t]+\\(\\([a-zA-Z0-9_]\\|\\( *\t*< *\t*\\)\\|\\( *\t*> *\t*\\)\\|\\( *\t*, *\t*\\)\\|\\( *\t*\\[ *\t*\\)\\|\\(]\\)\\)+\\)[ \t]+[a-zA-Z0-9_]+[ \t]*(\\(.*\\))[ \t]*\\(throws[ \t]+\\([a-zA-Z0-9_, \t\n]*\\)\\)?[ \t\n]*{\\)" )

;;; Automatically activate TeX-fold-mode.
    (add-hook 'LaTeX-mode-hook(lambda ()
                                (Tex-fold-mode 1)))
;;(setq TeX-fold-type-list '(comment))
