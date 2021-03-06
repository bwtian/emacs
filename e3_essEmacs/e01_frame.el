
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

;;(set-face-attribute 'default nil :family "Consolas" :height 104)
