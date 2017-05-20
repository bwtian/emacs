;;(setq initial-frame-alist '((top . 10) (left . 10) (width . 80) (height . 40)))
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; (setq default-frame-alist
;;       (append (list
;;                '(alpha . (90 90)) ;; 90,85 ;; 100,100
;;                ) default-frame-alist))

;; Start Message
  (setq inhibit-startup-message t)  ;; nil=show, do not show log

;; Title Bar
  (setq frame-title-format "emacs@%b %f") ;; Show buffer name in Title bar

;; Menu Bar
  (menu-bar-mode t) ;; show menubar
  ;; (if (fboundp 'menu-bar-mode)
  ;;     (menu-bar-mode -1))

;; Tool Bar
  (tool-bar-mode -1) ;; 1 to show toolbar
  ;; (if (fboundp 'tool-bar-mode)
  ;; (tool-bar-mode -1)
;; Ruler Bar
  (add-hook 'window-configuration-change-hook (lambda () (ruler-mode 1)))
  (add-hook 'find-file-hook (lambda () (ruler-mode 1)))

;; Scroll Bar
;;  (set-scroll-bar-mode t) ;;'right
(set-scroll-bar-mode nil) ;;'right
;; ring-bell
(setq ring-bell-function 'ignore)

;; (setq-default mode-line-format
;;               '("-"
;;                 mode-line-mule-info
;;                 mode-line-modified
;;                 " "
;;                 mode-line-buffer-identification
;;                 " "
;;                  global-mode-string
;;                  " %[("
;;                  mode-name
;;                  mode-line-process
;;                  minor-mode-alist
;;                  "%n" ")%]"
;;                  (which-func-mode ("" which-func-format "-"))
;;                 "-%-"
;;                 ))
  (setq size-indication-mode t) ;; Size of the file
  (setq line-number-mode t) ;; Line number on mode-line bar
  (setq column-number-mode t) ;; Column number on mode-line bar
  (display-time-mode 1) ;; Show time
  (setq display-time-24hr-format t)
  (setq display-time-day-and-date t)

;;  conflict with polymode
;;  (global-linum-mode 1)  ; turn on display line numbers in margin but make emacs slow.
  (global-hl-line-mode 1) ; turn on highlighting current line
  ;;(setq linum-format "%5d ") ;; Width of linum

(defun wc () (interactive) (shell-command (concat "wc " buffer-file-name)))
(global-set-key "\C-cw" 'wc)
 (defun count-word (start end)
    "Print number of words in the region."
    (interactive "r")
    (save-excursion
      (save-restriction
        (narrow-to-region start end)
        (goto-char (point-min))
        (count-matches "\\sw+"))))
(defalias 'word-count 'count-word)

;;(set-face-attribute 'default nil :family "Consolas" :height 104)

(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)
;;(setq speedbar-use-images nil) ;;disable the icons?

;;(setq pop-up-frames t) ;; each file opens in a new window
  ;;popwin.el and e2wm.el  
  (auto-image-file-mode)
  (setq uniquify-buffer-name-style 'forward)
  (auto-compression-mode 1)
;;SPLIT VERTIVALLY
(setq split-width-threshold 0
     split-height-threshold nil)

;;MARK COLUMN 80
(require 'fill-column-indicator)
(add-hook 'after-change-major-mode-hook
          '(lambda ()
             (setq fci-rule-column 80)
             (fci-mode)))
  ;; (setq Man-notify-method 'pushy)
