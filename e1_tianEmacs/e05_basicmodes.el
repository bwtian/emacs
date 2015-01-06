
;; (setq el-get-dir "~/Dropbox/config/emacs/00_setEmacs/el-get")
;; (url-retrieve
;;  "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;  (lambda (s)
;;    (let (el-get-master-branch)
;;      (goto-char (point-max))
;;      (eval-print-last-sexp))))

(require 'undo-tree)
(global-undo-tree-mode 1)

(global-set-key [(meta backspace)] 'undo)
(global-set-key [(meta shift backspace)] 'redo)
(define-key global-map (kbd "C-/") 'undo)
(define-key global-map (kbd "C-x C-/") 'redo)
(defalias 'redo 'undo-tree-redo)
;(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】
(global-set-key (kbd "C-S-z") 'redo) ; 【Ctrl+Shift+z】;  Mac style
;;(global-set-key (kbd "C-y") 'redo) ; 【Ctrl+y】; Microsoft Windows style

;;(cua-mode t) ;;
(setq cua-enable-cua-keys nil)  ;; disable C-c,v,x style
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour
 ;; shift + click select region
(define-key global-map (kbd "<S-down-mouse-1>") 'ignore) ; turn off font dialog
;;(define-key global-map (kbd "<S-return>") 'cua-set-mark)
(put 'mouse-set-point 'CUA 'move)
;(global-set-key [f1] 'cua-mode)

(require 'sane-term)
(global-set-key (kbd "C-x t") 'sane-term)
(global-set-key (kbd "C-x T") 'sane-term-create)

;; backups
(setq backup-by-copying                 nil
      backup-by-copying-when-linked     t
      backup-by-copying-when-mismatch   t
      ;; fixed directory for backups
      ;; backup-directory-alist            `(("." . ,(concat user-emacs-directory
      ;;                                                     "backups/")))
      ;; ;; versioned backups
      delete-old-versions               t
      kept-new-versions                 2
      kept-old-versions                 0
      version-control                   nil)

;; auto-saves
;; (defconst sj/auto-save-directory (concat user-emacs-directory "auto-saves/"))
;; (make-directory sj/auto-save-directory t)
;; (setq auto-save-default  t
;;       auto-save-interval 300
;;       ;; fixed directory for auto-saves
;;       auto-save-list-file-prefix (concat sj/auto-save-directory ".saves-")
;;       auto-save-file-name-transforms `(,@auto-save-file-name-transforms
;;                                        (".*" ,sj/auto-save-directory t)))

;; garbage collection settings
(setq gc-cons-threshold (max gc-cons-threshold (* 4 1024 1024)))
    ;; (setq backup-by-copying t) ;automatically backup
    ;; (setq kept-new-versions 5) ;Keep 6 newest Bankup files
    ;; (setq kept-old-versions 5) ;Keep 6 oldest Bankup files
    ;; (setq delete-old-versions t) ;Delete old versions
    ;; (setq version-control t) ; Multitime backup
    (setq kill-ring-max 200)
    ;;(setq delete-auto-save-files t) ; Delete Auto-save file When quit
    ;;(setq x-select-enable-clipboard t) ;; enable Copy from outside
    ;;(setq make-backup-files nil) ; stop creating those backup~ files
    (setq auto-save-default nil) ; stop creating those #autosave# files

;; place all auto-saves and backups in the directory pointed to by temporary-file-directory
    ;; (e.g., /tmp; C:/Temp/ on Windows).To see where that is, use C-h v then type
    ;; temporary-file-directory and hit enter.

  (setq backup-directory-alist
        `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms
        `((".*" ,temporary-file-directory t)))
  ;; (setq backup-directory-alist
  ;;       `((".*" . "~/.saves")))
  ;; (setq auto-save-file-name-transforms
  ;;       `((".*" "~/.saves" t)))

(require 'auto-save-buffers-enhanced)
(setq auto-save-buffers-enhanced-interval 3)
(auto-save-buffers-enhanced t)

(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
