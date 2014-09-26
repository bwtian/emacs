
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

(setq ess-use-auto-complete t)
(ess-force-buffer-current "Process to load into: ")))
