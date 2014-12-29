
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

(setq mac-command-modifier 'control)
(setq mac-control-modifier 'meta)
(setq x-alt-keysym 'meta)
(setq x-super-keysym 'meta)

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

;;(global-set-key (kbd "C-h")  'backward-delete-char) ;; c-h = <help>
(global-set-key [?\C-z] 'undo)  
(global-set-key (kbd "C-c  g") 'goto-line)  ; goto line

;; Do not use C-M-F Took by System tty

(global-set-key "\M-0" 'delete-window)
(global-set-key "\M-1" 'delete-other-windows) ; Alt-1
(global-set-key "\M-2" 'split-window-vertically) ; Alt-2
(global-set-key "\M-3" 'split-window-horizontally)

      
      ;; F1: {default::Help}
      ;;(global-set-key [f1] 'info)  ;;C-h i
      ;;(global-set-key [f1] 'help)   
      ;;(global-set-key [C-f1] 'manual-entry)
      ;;(global-set-key [S-f1]  'man) 
      ;;(global-set-key [f1]   'outline-minor-mode)
      ;;(global-set-key [S-f1] 'org)
      ;;(global-set-key [C-f1] 'flyspell-mode )          
      ;; ;; F2 {default::Undo}
      ;; ;;(global-set-key [f2] 'rename-file)
      ;; (global-set-key [f2] 'undo)
      ;; (global-set-key [C-f2] 'advertised-undo)
      (global-set-key [f2]   'save-buffer) 
      (global-set-key [C-f2] 'rename-buffer)  
      (global-set-key [S-f2]  'latex-mode)  
      ;; ;; F3:Redo
      ;; ;;  (global-set-key [f3] 'repeat-complex-command)  ;;redo
      (global-set-key [f3]   'ibuffer)   
      (global-set-key [S-f3]   'query-replace)  
      ;; ;; F4:Kill ==>> Shell
      (global-set-key [f4] 'kill-this-buffer)   
      (global-set-key [S-f4] 'eshell)  
      (global-set-key [C-f4] 'shell)   
      (global-set-key [C-S-f4]  'save-buffers-kill-emacs) 
      
      
      ;; ;; F5: Run: Compile and eval
      ;; (global-set-key [f5] 'eval-current-buffer)
      ;; (global-set-key [C-f5] 'compile)
      ;; (global-set-key [C-S-f5] 'eval-buffer)
      (global-set-key [f5] 'latex-or-view)   
      (global-set-key [S-f5] 'TeX-command-master)   
      ;; ;; F6: Replace
      ;; (global-set-key [f6] 'replace-regexp)
      ;; (global-set-key [C-f6] 'replace-string)
      (global-set-key [f6]   'LaTeX-environment) ;;C-c C-e  
      (global-set-key [S-f6] 'LaTeX-fill-environment)  
      (global-set-key [C-f6] 'LaTeX-section) ;; C-c C-s

      ;; ;; F7: Error Check
      ;; (global-set-key [f7] 'next-error)
      ;; (global-set-key [C-f7] 'previous-error)
      (global-set-key [f7]    'hide-body)   
      (global-set-key [S-f7]    'show-all)
      (global-set-key [C-f7]    'show-entry)   
      (global-set-key [C-S-f7]    'hide-entry) 

    
      ;; F8: Spell Check
      (global-set-key (kbd "<f8>") 'ispell-word)
      (global-set-key (kbd "C-<f8>") 'flyspell-mode)
      (global-set-key (kbd "C-M-<f8>") 'flyspell-buffer)
    ;;  (global-set-key (kbd "C-S-<f8>") 'flyspell-check-previous-highlighted-word)
      (global-set-key (kbd "M-<f8>") 'flyspell-check-next-highlighted-word)
    
      
      ;; ;; F9:Shell
      (global-set-key [f9]  'set-mark-command)   
 
      ;; ;;(global-set-key (kbd "C-c z") 'shell)
      ;;(global-set-key [f9] 'shell) ;; =M-x shell
    ;; (global-set-key (kbd "<f9> <f9>") 'bh/show-org-agenda)
    ;; (global-set-key (kbd "<f9> b") 'bbdb)
    ;; (global-set-key (kbd "<f9> c") 'calendar)
    ;; (global-set-key (kbd "<f9> f") 'boxquote-insert-file)
    ;; (global-set-key (kbd "<f9> g") 'gnus)
    ;; (global-set-key (kbd "<f9> h") 'bh/hide-other)
    ;; (global-set-key (kbd "<f9> n") 'bh/toggle-next-task-display)
    ;; (global-set-key (kbd "<f9> w") 'widen)
    ;; (global-set-key (kbd "<f9> I") 'bh/punch-in)
    ;; (global-set-key (kbd "<f9> O") 'bh/punch-out)
    ;; (global-set-key (kbd "<f9> o") 'bh/make-org-scratch)
    ;; (global-set-key (kbd "<f9> r") 'boxquote-region)
    ;; (global-set-key (kbd "<f9> s") 'bh/switch-to-scratch)
    ;; (global-set-key (kbd "<f9> t") 'bh/insert-inactive-timestamp)
    ;; (global-set-key (kbd "<f9> T") 'bh/toggle-insert-inactive-timestamp)
    ;; (global-set-key (kbd "<f9> v") 'visible-mode)
    ;; (global-set-key (kbd "<f9> l") 'org-toggle-link-display)
    ;; (global-set-key (kbd "<f9> SPC") 'bh/clock-in-last-task)
    ;; (global-set-key (kbd "C-<f9>") 'previous-buffer)
    ;; (global-set-key (kbd "M-<f9>") 'org-toggle-inline-images)
      
      ;; ;; F10: {Menu}
      ;; ;;(global-set-key [f10] 'menu-bar-mode)
      ;; (global-set-key [f10] 'save-current-buffer)
      ;; (global-set-key [C-f10] 'kill-compilation)
      ;; (global-set-key (kbd "C-<f10>") 'next-buffer)
       (global-set-key [f10]    'other-window)  
       (global-set-key [S-f10]  'delete-other-windows)   
       (global-set-key [C-f10]  'switch-to-buffer )  
      ;; ;; F11:Toolbar
      ;; (global-set-key [f11] 'tool-bar-mod)
      ;; (global-set-key [C-11] 'set-mark-command)
    ;;  (global-set-key (kbd "<f11>") 'org-clock-goto)
    ;;(global-set-key (kbd "C-<f11>") 'org-clock-in)
      ;; ;; F12 Custome
      ;; ;; (global-set-key [f12] 'calendar)
      ;;(define-key LaTeX-mode-map (kbd "<f12>") 'my-toggle-whizzy-mode)))
      ;; (global-set-key [C-f12] 'list-bookmarks)
      ;; ;; Window move
      ;; (global-set-key [S-left] 'windmove-left)
      ;; (global-set-key [S-right] 'windmove-right)
   ;; (global-set-key (kbd "<f11>") 'org-clock-goto)
  ;;  (global-set-key (kbd "C-<f11>") 'org-clock-in)
      ;; (global-set-key [S-up] 'windmove-up)
      ;; (global-set-key [S-down] 'windmove-down
      ;; (global-set-key [f12] 'my-theme-cycle)
  ;;(global-set-key (kbd "<f12>") 'org-agenda)
  ;;(global-set-key (kbd "C-s-<f12>") 'bh/save-then-publish)
