
(mouse-avoidance-mode 'animate)
(blink-cursor-mode -1)
(mouse-wheel-mode t)
(setq track-eol t)
(setq visible-bell nil)
(setq mouse-yank-at-point t)
(setq-default cursor-type  'hollow)
(global-set-key (kbd "<C-mouse-9>") 'nil)
(global-set-key (kbd "<C-mouse-9>") 'mouse-minor-mode-menu) ;mouse-minor-mode-menu
(global-set-key (kbd "<C-down-mouse-1>") nil)
(global-set-key (kbd "<C-mouse-1>") 'mouse-buffer-menu) ;buffer menu = C-x C-b
(require 'mouse-drag)
(global-set-key (kbd "<S-down-mouse-1>") 'mouse-drag-drag) ;move with mouse

(require 'mouse-copy)
(global-set-key [M-C-down-mouse-1] 'mouse-drag-secondary-moving) ;cut and paste to point,not yank
(global-set-key [M-S-down-mouse-1] 'mouse-drag-secondary-pasting) ;copy and paste to point, not yank  ;; Default Mouse Activity
;; (global-set-key (kbd "<mouse-1>") 'mouse-set-point)
;; (global-set-key (kbd "<down-mouse-1>") 'mouse-drag-region)
;; (global-set-key (kbd "<C-down-mouse-1>") 'mouse-buffer-menu)
;; (global-set-key (kbd "<S-down-mouse-1>") 'mouse-set-font)
;; (global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)
;; (global-set-key (kbd "<mouse-3>") 'mouse-save-then-kill)
;; (global-set-key (kbd "<C-down-mouse-2>") 'mouse-popup-menuar-stuff) ;text properties menue
;; (global-set-key (kbd "<C-down-mouse-3>") 'mouse-major-mode-menu) ;mouse-major-mode-menu

(defun rename-file-and-buffer ()
"Rename the current buffer and file it is visiting."
(interactive)
(let ((filename (buffer-file-name)))
  (if (not (and filename (file-exists-p filename)))
      (message "Buffer is not visiting a file!")
    (let ((new-name (read-file-name "New name: " filename)))
      (cond
       ((vc-backend filename) (vc-rename-file filename new-name))
       (t
        (rename-file filename new-name t)
        (set-visited-file-name new-name t t)))))))
(global-set-key (kbd "C-c r")  'rename-file-and-buffer)

(global-set-key (kbd "C-S-c") 'comment-region)   ;; make C-c C-c and C-c C-u work
  (global-set-key (kbd "C-S-u") 'uncomment-region) ;; for comment/uncomment region in all modes
;; (global-set-key (kbd "C-c ;")   'comment-region)
;; (global-set-key (kbd "C-c M-;") 'uncomment-region)

(global-set-key (kbd "C-c M-r") 'replace-regexp)
(global-set-key (kbd "C-c C-r")   'replace-string)

(global-set-key (kbd "\M-g") 'goto-line)
(global-set-key (kbd "<home>")  'beginning-of-buffer)
(global-set-key (kbd "<end>")   'end-of-buffer)
(global-set-key (kbd "C-x n r") 'narrow-to-region)
