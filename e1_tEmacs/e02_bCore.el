(setq vc-follow-symlinks t) ;; Avoid Yes No to Symbol link to Git-Control ed source file
(setq auto-revert-check-vc-info t)
(setq auto-revert-interval 1)
(add-hook 'find-file-hook
          '(lambda ()
             (when
                 (and buffer-file-name
                      (vc-backend buffer-file-name))
               (auto-revert-mode))))

(recentf-mode 1) ; keep a list of recently opened files
(add-hook 'after-init-hook 'recentf-mode)
(setq recentf-max-saved-items 2000)
;; (setq recentf-save-file
;;       (expand-file-name
;;        (concat my:user-emacs-temporary-directory "recentf")))
(setq recentf-auto-cleanup 'never)
(run-with-idle-timer 300 t 'recentf-save-list)
(run-with-idle-timer 600 t 'recentf-cleanup)

(electric-pair-mode t)
 (setq skeleton-pair t) ;; Skeleton library provides pair insertion via the skeleton-insert-maybe
   (setq skeleton-pair-on-word t)
    (global-set-key "("  'skeleton-pair-insert-maybe)
    (global-set-key "["  'skeleton-pair-insert-maybe)
    (global-set-key "{"  'skeleton-pair-insert-maybe)
    (global-set-key "\'" 'skeleton-pair-insert-maybe)
    (global-set-key "\`" 'skeleton-pair-insert-maybe)
    ;; (global-set-key "\"" 'skeleton-pair-insert-maybe)
    ;; (global-set-key "\%" 'skeleton-pair-insert-maybe)
    ;; (global-set-key "\;" 'skeleton-pair-insert-maybe)
    ;; (global-set-key "\:" 'skeleton-pair-insert-maybe)
    ;; (global-set-key "<"  'skeleton-pair-insert-maybe)
;; for Latex
;;  (defun quoted-parentheses (arg)
;;       (interactive "P")
;;       (if (looking-back "\\\\")
;;           (skeleton-insert '(nil "(" _ "\\)") -1)
;;         (skeleton-pair-insert-maybe arg)))
;;  (defun quoted-brackets (arg)
;;       (interactive "P")
;;       (if (looking-back "\\\\")
;;           (skeleton-insert '(nil "[" _ "\\]") -1)
;;         (skeleton-pair-insert-maybe arg)))
;; (global-set-key "(" 'quoted-parentheses)
;; (global-set-key "[" 'quoted-brackets)

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

(setq transient-mark-mode t)
(global-auto-revert-mode t)
(setq read-file-name-completion-ignore-case t)