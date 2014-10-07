
(require 'ess-site)  ;; Load ESS from ELPA to Highlight R and Auto-complte
(setq ess-eval-visibly nil) ; t ESS will not print the evaluated comands, also speeds up the evaluation
(setq ess-eval-visibly-p nil)   ; fast ;; Must-haves for ESS
;; This causes commands to be invisible, and leaves junk like + + + > > >;
(setq ess-ask-for-ess-directory nil) ;; Dont ask each time when start an interactive R session  C-c C-s

(setq ansi-color-for-comint-mode 'filter)
(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)

;;(setq ess-use-auto-complete 'script-only)

(setq ess-default-style 'BSD)   ; Common R chosen

(require 'ess-eldoc)
(setq ess-eldoc-show-on-symbol t)

(add-hook 'ess-mode-hook
        '(lambda ()
           (outline-minor-mode)
           (setq outline-regexp "\\(^#\\{4,5\\} \\)\\|\\(^[a-zA-Z0-9_\.]+ ?<-?function(.*{\\)")
           (defun outline-level ()
             (cond ((looking-at "^##### ") 1)
               ((looking-at "^#### ") 2)
               ((looking-at "^[a-zA-Z0-9_\.]+ ?<- ?function(.*{") 3)
               (t 1000)))
           ))
(add-hook 'ess-mode-hook
          '(lambda() (yafolding-mode)))

(require 'ess-tracebug)    ;; http://code.google.com/p/ess-tracebug/
(setq ess-use-tracebug t)                    ; permanent activation
; ;(setq ess-tracebug-prefix "\M-t")               ; activate with M-t
(add-hook 'ess-post-run-hook 'ess-tracebug t)

(require 'ess-smart-underscore)  ;;elpa
(setq ess-S-assign-key (kbd "C-="))
(ess-toggle-S-assign-key t)     ; enable above key definition
