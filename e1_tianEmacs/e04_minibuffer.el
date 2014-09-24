
(defalias 'yes-or-no-p 'y-or-n-p) ;; Treat 'y' as yes, 'n' as no
(setq enable-recursive-minibuffers t) ;; nil
(icomplete-mode 1)
(setq resize-mini-windows t) ;; t for autosize nil for not

;; don't let the cursor go into minibuffer prompt
(setq minibuffer-prompt-properties (quote (read-only t point-entered
                                                     minibuffer-avoid-prompt
                                                     face
                                                     minibuffer-prompt)))

(ido-mode t)  ;; Ido: interactively do things with buffers and files
; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)

(require 'eldoc)
(setq eldoc-idle-delay 0)
(setq eldoc-echo-area-use-multiline-p t)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ess-mode-hook 'turn-on-eldoc-mode)
(add-hook 'R-mode-hook 'turn-on-eldoc-mode)
