
;; (setq el-get-dir "~/Dropbox/config/emacs/00_setEmacs/el-get")
;; (url-retrieve
;;  "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;  (lambda (s)
;;    (let (el-get-master-branch)
;;      (goto-char (point-max))
;;      (eval-print-last-sexp))))

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-x x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(require 'undo-tree)
(global-undo-tree-mode 1)

(global-set-key [(meta backspace)] 'undo)
(global-set-key [(meta shift backspace)] 'redo)
(define-key global-map (kbd "C-/") 'undo)
(define-key global-map (kbd "C-x C-/") 'redo) 
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】
(global-set-key (kbd "C-S-z") 'redo) ; 【Ctrl+Shift+z】;  Mac style
;;(global-set-key (kbd "C-y") 'redo) ; 【Ctrl+y】; Microsoft Windows style
