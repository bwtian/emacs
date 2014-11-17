
(require 'ess-site)  ;; Load ESS from ELPA to Highlight R and Auto-complte
  (setq ess-eval-visibly nil) ; t ESS will not print the evaluated comands, also speeds up the evaluation
  (setq ess-eval-visibly-p nil)   ; fast ;; Must-haves for ESS
  ;; This causes commands to be invisible, and leaves junk like + + + > > >;
  (setq ess-ask-for-ess-directory nil) ;; Dont ask each time when start an interactive R session  C-c C-s
(add-hook 'ess-mode-hook
         (lambda()
           (setq-local split-height-threshold nil)
           (setq-local split-width-threshold  0)
           ))

(setq ansi-color-for-comint-mode 'filter)
(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)

;;(setq ess-use-auto-complete 'script-only)
(setq ess-use-auto-complete t) ;DEFAULT > 12.09

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

;; Lets you do 'C-c C-c Sweave' from your Rnw file
(defun emacsmate-add-Sweave ()
  (add-to-list 'TeX-command-list
           '("Sweave" "R CMD Sweave %s"
         TeX-run-command nil (latex-mode) :help "Run Sweave") t)
  (add-to-list 'TeX-command-list
           '("LatexSweave" "%l %(mode) %s"
         TeX-run-TeX nil (latex-mode) :help "Run Latex after Sweave") t)
  (setq TeX-command-default "Sweave"))

(add-hook 'Rnw-mode-hook 'emacsmate-add-Sweave)

(autoload 'R-mode "ess-site" "Emacs Speaks Statistics mode" t)
  (autoload 'R "ess-site" "start R" t)
  (setq-default inferior-R-program-name "R")  ;; Search R in a nonstandard location on Linux
  (setq-default ess-dialect "R")
  (setq-default inferior-R-args "--no-restore-history --no-save ")
  (setq ess-local-process-name "R")
  (defun ess-set-language ()
    (setq-default ess-language "R")
    (setq ess-language "R")
    )
(add-hook 'ess-post-run-hook 'ess-set-language t)
;;(add-hook 'ess-pre-run-hook (lambda () (ess-load-hook t))) ;; R 起動直前の処理
;;(add-hook 'R-mode-hook 'ess-load-hook) ;; R-mode 起動直後の処理

;;(setq auto-mode-alist
 ;;     (cons (cons "\\.r$|\\.R$" 'R-mode) auto-mode-alist))

(add-to-list 'auto-mode-alist '("\\.[rR]$" . R-mode))
;; *.r.txt and *.R.txt files activate r-mode            ; Obsolete. Just set TextEdit.app for .R in Finder
;; Maybe useful for result files, open with ESS (emacs) or TextEdit.app (GUI) automatically
(setq auto-mode-alist
      (cons '("\\.r\\.txt$" . R-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.R\\.txt$" . R-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.RRR$" . R-mode) auto-mode-alist))
