
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

(require 'helm-config)
(require 'helm-descbinds)
(require 'helm-migemo)
(require 'helm-gtags)
(setq helm-idle-delay             0.2
      helm-input-idle-delay       0.2
      helm-candidate-number-limit 200
      helm-buffer-max-length      50)

(global-set-key (kbd "C-x b") 'helm-for-files)
