
(require 'yasnippet)
;;(yas/initialize)
(yas/global-mode 1)
;;(require 'auto-complete-yasnippet)

(add-hook 'org-mode-hook
              (lambda ()
              ;; yasnippet
              (make-variable-buffer-local 'yas/trigger-key)
              (setq yas/trigger-key [tab])
              (define-key yas/keymap [tab] 'yas/next-field-group)
              ;; flyspell mode to spell check everywhere
              (flyspell-mode 1)))

(require 'r-autoyas)
(add-hook 'ess-mode-hook 'r-autoyas-ess-activate)
