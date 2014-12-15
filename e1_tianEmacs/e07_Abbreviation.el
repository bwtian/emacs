
;; turn on abbrev mode globally
  (setq default-abbrev-mode t)  
  (setq abbrev-file-name             ;; tell emacs where to read abbrev  
          "~/SparkleShare/emacs.d/00_setEmacs/share/abbrevDic")    ;; definitions from...  
  ;(setq save-abbrevs t)              ;; save abbrevs when files are saved  
                                       ;; you will be asked before the abbreviations are saved 
  ;; stop asking whether to save newly added abbrev when quitting emacs
  (setq save-abbrevs t)
  ;;(setq save-abbrevs nil) 
  (quietly-read-abbrev-file)       ;; reads the abbreviations file on startup  
  ;Avoid errors if the abbrev-file is missing  
  (if (file-exists-p abbrev-file-name)  
          (quietly-read-abbrev-file))  
(setq dabbrev-case-fold-search nil) ; ignore up and lowcase
(setq dabbrev-abbrev-char-regexp "[A-z0-9:-]") ;; mathc words

;; Command completion with Alt-space
(define-key global-map (kbd "C-M-/") 'expand-abbrev)
(global-set-key (kbd "\M- ") 'dabbrev-expand)
(global-set-key (kbd "M-RET") 'dabbrev-expand)
(global-set-key (kbd "M-<tab>") 'dabbrev-expand)

(global-set-key "\C-o" 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(yas/hippie-try-expand
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

(require 'pabbrev)
(global-pabbrev-mode)
(setq pabbrev-idle-timer-verbose nil)
; Let Pabbrev popup
;;(require 'popup)
(defun pabbrevx-suggestions-goto-buffer (suggestions)
  (let* ((candidates (mapcar 'car suggestions))
         (bounds (pabbrev-bounds-of-thing-at-point))
         (selection (popup-menu* candidates
                                 :point (car bounds)
                                 :scroll-bar t)))
    (when selection
      ;; modified version of pabbrev-suggestions-insert
      (let ((point))
        (save-excursion
          (progn
            (delete-region (car bounds) (cdr bounds))
            (insert selection)
            (setq point (point))))
        (if point
            (goto-char point))
        ;; need to nil this so pabbrev-expand-maybe-full won't try
        ;; pabbrev expansion if user hits another TAB after ac aborts
        (setq pabbrev-last-expansion-suggestions nil)
        ))))
(fset 'pabbrev-suggestions-goto-buffer 'pabbrevx-suggestions-goto-buffer)
