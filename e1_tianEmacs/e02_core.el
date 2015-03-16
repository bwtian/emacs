
(setq default-directory "~/SparkleShare/")

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
