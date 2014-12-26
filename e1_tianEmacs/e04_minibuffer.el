
(defalias 'yes-or-no-p 'y-or-n-p) ;; Treat 'y' as yes, 'n' as no
(setq enable-recursive-minibuffers t) ;; nil
(icomplete-mode 1)
(setq resize-mini-windows t) ;; t for autosize nil for not
(global-set-key (kbd "C-x f") 'find-file-at-point) ;;defaule set the fill-column
;; don't let the cursor go into minibuffer prompt
(setq minibuffer-prompt-properties (quote (read-only t point-entered
                                                     minibuffer-avoid-prompt
                                                     face
                                                     minibuffer-prompt)))

(ido-mode t)  ;; Ido: interactively do things with buffers and files
; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
(setq ido-ignore-extensions t) 
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess) 
(setq ido-create-new-buffer 'always)
(setq ido-max-directory-size 100000)
(setq ido-auto-merge-delay-time 0.5)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)
(setq ido-file-extensions-order '(".org" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf"))

(require 'eldoc)
(setq eldoc-idle-delay 0)
(setq eldoc-echo-area-use-multiline-p t)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ess-mode-hook 'turn-on-eldoc-mode)
(add-hook 'R-mode-hook 'turn-on-eldoc-mode)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "C-M-x") 'smex)
(global-set-key (kbd "C-x x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(require 'helm-config)
(require 'helm-descbinds)
(require 'helm-ag)
(require 'helm-flymake)
;;(require 'helm-migemo)
(require 'helm-orgcard)
(require 'helm-gtags)
(require 'helm-helm-commands)
(setq helm-idle-delay             0.0
      helm-input-idle-delay       0.0
      helm-candidate-number-limit 200
      helm-buffer-max-length      50)
(require 'popwin)
(popwin-mode 1)
(setq display-buffer-function 'popwin:display-buffer)
(push '("^\*helm .+\*$" :regexp t) popwin:special-display-config)
 (global-set-key (kbd "C-z") popwin:keymap)
;; helm-follow-mode （C-c C-f で ON/OFF）の前回の状態を維持する
(setq helm-follow-mode-persistent t)
;; ミニバッファで C-k 入力時にカーソル以降を削除する（C-u C-k でも同様の動きをする）
(setq helm-delete-minibuffer-contents-from-point t)

(global-set-key (kbd "C-x C-;") 'helm-for-files)
(global-set-key (kbd "C-c b") 'helm-for-files)
(global-set-key (kbd "C-;") 'helm-resume)
(global-set-key (kbd "C-;") 'helm-mini)
(global-set-key (kbd "M-r") 'helm-resume)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
;(custom-set-variables '(helm-command-prefix-key "C-;"))
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c d") 'helm-descbinds)
(global-set-key (kbd "C-c o") 'helm-occur)
(global-set-key (kbd "C-c s") 'helm-ag)
(global-set-key (kbd "C-c y") 'helm-show-kill-ring)
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-x C-b") 'helm-for-files)
(define-key global-map (kbd "C-x b")   'helm-buffers-list)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
(define-key global-map (kbd "M-z")     'helm-do-grep)
(define-key global-map (kbd "M-s")     'helm-occur)
(define-key global-map (kbd "C-c i")   'helm-imenu)
(define-key helm-command-map (kbd "y")   'helm-show-kill-ring)
(define-key helm-command-map (kbd "o")   'helm-occur)
(define-key helm-command-map (kbd "C-s") 'helm-occur-from-isearch)
(define-key helm-command-map (kbd "g")   'helm-do-grep) ; C-u 付で起動すると、recursive となる
(define-key helm-command-map (kbd "t")   'helm-gtags-find-tag)

;;(autoload 'helm-company "helm-company") ;; Not necessary if using ELPA package
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))
(eval-after-load 'helm
  '(define-key helm-map (kbd "C-c g") 'helm-git-grep-from-helm))
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'R-mode-hook 'helm-gtags-mode)
(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-suggested-key-mapping t
 )
;; key bindings
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
             (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
             (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
             (local-set-key (kbd "M-f") 'helm-gtags-find-symbol)
             (local-set-key (kbd "M-g") 'helm-gtags-dwim)
;             (local-set-key (kbd "M-s") 'helm-gtags-show-stack)
             (local-set-key (kbd "M-p") 'helm-gtags-previous-history)
             (local-set-key (kbd "M-n") 'helm-gtags-next-history)   
             (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)))
