
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

;; ESS Mode (.R file)
  (define-key ess-mode-map "\C-l" 'ess-eval-line-and-step)
  (define-key ess-mode-map "\C-p" 'ess-eval-function-or-paragraph-and-step)
  (define-key ess-mode-map "\C-r" 'ess-eval-region)

;; iESS Mode (R console)
  (define-key inferior-ess-mode-map "\C-u" 'comint-kill-input)
  (define-key inferior-ess-mode-map "\C-w" 'backward-kill-word)
  (define-key inferior-ess-mode-map "\C-a" 'comint-bol)
  (define-key inferior-ess-mode-map [home] 'comint-bol)

;; Comint Mode (R console as well)
  (define-key comint-mode-map "\C-e" 'comint-show-maximum-output)
  (define-key comint-mode-map "\C-r" 'comint-show-output)
  (define-key comint-mode-map "\C-o" 'comint-kill-output)

;;Tracing bug
  (define-key ess-mode-map "\M-]" 'next-error)
  (define-key ess-mode-map "\M-[" 'previous-error)
  (define-key inferior-ess-mode-map "\M-]" 'next-error-no-select)
  (define-key inferior-ess-mode-map "\M-[" 'previous-error-no-select)
  (define-key compilation-minor-mode-map [(?n)] 'next-error-no-select)
  (define-key compilation-minor-mode-map [(?p)] 'previous-error-no-select)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ess-R-font-lock-keywords (quote ((ess-R-fl-keyword:modifiers . t)
                                    (ess-R-fl-keyword:fun-defs . t)
                                    (ess-R-fl-keyword:keywords . t)
                                    (ess-R-fl-keyword:assign-ops . t)
                                    (ess-R-fl-keyword:constants . t)
                                    (ess-fl-keyword:fun-calls . t)
                                    (ess-fl-keyword:numbers . t)
                                    (ess-fl-keyword:operators . t)
                                    (ess-fl-keyword:delimiters . t)
                                    (ess-fl-keyword:= . t)
                                    (ess-R-fl-keyword:F&T . t)))))

(autoload 'ess-rdired "ess-rdired" 
  "View *R* objects in a dired-like buffer." t)
