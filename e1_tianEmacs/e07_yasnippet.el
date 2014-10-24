
(require 'yasnippet)
  ;;(yas/initialize)
  (yas/global-mode 1)
  ;;(require 'auto-complete-yasnippet)
(defface ac-yasnippet-candidate-face
  '((t (:background "sandybrown" :foreground "black")))
  "Face for yasnippet candidate.")

(defface ac-yasnippet-selection-face
  '((t (:background "coral3" :foreground "white")))
  "Face for the yasnippet selected candidate.")

(defvar ac-source-yasnippet
  '((candidates . ac-yasnippet-candidate)
    (action . yas/expand)
    (candidate-face . ac-yasnippet-candidate-face)
    (selection-face . ac-yasnippet-selection-face))
  "Source for Yasnippet.")

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
