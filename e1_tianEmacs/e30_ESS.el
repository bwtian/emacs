
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

(require 'ess-R-object-popup)
  (define-key ess-mode-map (kbd "C-c s") 'ess-R-object-popup)
  ;; the alist
(setq ess-R-object-tooltip-alist
      '((numeric    . "summary")
        (factor     . "table")
        (integer    . "summary")
        (lm         . "summary")
        (data.frame . "summary")
        (other      . "str")))

(define-key ess-mode-map (kbd "C-c V") 'ess-R-dv-ctable)
(define-key ess-mode-map (kbd "C-c v") 'ess-R-dv-pprint)

(require 'ac-R)
(require 'helm-R)
(require 'anything-R)

(require 'inlineR)
(setq inlineR-re-funcname "plot\|image\|hogehoge\|my-func")
(setq inlineR-default-image "png")
(setq inlineR-default-dir "/tmp/")
(setq inlineR-cairo-p t)

(defun emacsmate-turn-on-r-hide-show ()
  (when (string= "S" ess-language)
    (set (make-local-variable 'hs-special-modes-alist) '((ess-mode "{" "}" "#" nil nil)))
    (hs-minor-mode 1)
    (when (fboundp 'foldit-mode)
      (foldit-mode 1))
    (when (fboundp 'fold-dwim-org/minor-mode)
      (fold-dwim-org/minor-mode))))
(add-hook 'ess-mode-hook 'emacsmate-turn-on-r-hide-show)

(defun emacsmate-ess-fix-path (beg end)
  "Fixes ess path"
  (save-restriction
    (save-excursion
      (narrow-to-region beg end)
      (goto-char (point-min))
      (when (looking-at "[A-Z]:\\\\")
        (while (search-forward "\\" nil t)
          (replace-match "/"))))))

(defun emacsmate-ess-turn-on-fix-path ()
  (interactive)
  (when (string= "S" ess-language)
    (add-hook 'auto-indent-after-yank-hook 'emacsmate-ess-fix-path t t)))
(add-hook 'ess-mode-hook 'emacsmate-ess-turn-on-fix-path)
(defun emacsmate-ess-fix-code (beg end)
  "Fixes ess path"
  (save-restriction
    (save-excursion
      (save-match-data
        (narrow-to-region beg end)
        (goto-char (point-min))
        (while (re-search-forward "^[ \t]*[>][ \t]+" nil t)
          (replace-match "")
          (goto-char (point-at-eol))
          (while (looking-at "[ \t\n]*[+][ \t]+")
            (replace-match "\n")
            (goto-char (point-at-eol))))))))

(defun emacsmate-ess-turn-on-fix-code ()
  (interactive)
  (when (string= "S" ess-language)
    (add-hook 'auto-indent-after-yank-hook 'emacsmate-ess-fix-code t t)))
(add-hook 'ess-mode-hook 'emacsmate-ess-turn-on-fix-code)

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

(defun my-ess-start-R ()
  (interactive)
  (if (not (member "*R*" (mapcar (function buffer-name) (buffer-list))))
      (progn
        (delete-other-windows)
        (setq w1 (selected-window))
        (setq w1name (buffer-name))
        (setq w2 (split-window w1 nil t))
        (R)
        (set-window-buffer w2 "*R*")
        (set-window-buffer w1 w1name))))
(defun my-ess-eval ()
  (interactive)
  (my-ess-start-R)
  (if (and transient-mark-mode mark-active)
      (call-interactively 'ess-eval-region)
    (call-interactively 'ess-eval-line-and-step))
  (when (eobp) ;; Bug Fix to allow end of buffer to insert line
    (insert "\n")))

(defun emacsmate-ess-add-shift-return ()
  (when (boundp 'auto-indent-alternate-return-function-for-end-of-line-then-newline)
    (set (make-local-variable 'auto-indent-alternate-return-function-for-end-of-line-then-newline)
         'my-ess-eval))
  (local-set-key [(shift return)] 'my-ess-eval))

(defun emacsmate-add-control-up-and-down ()
  (local-set-key [C-up] 'comint-previous-input)
  (local-set-key [C-down] 'comint-next-input))

(add-hook 'ess-mode-hook 'emacsmate-ess-add-shift-return)
(add-hook 'inferior-ess-mode-hook 'emacsmate-add-control-up-and-down)
(add-hook 'Rnw-mode-hook 'emacsmate-ess-add-shift-return)

;; changed by vinh
(defun ess-swv-run-in-R2 (cmd &optional choose-process)
  "Run \\[cmd] on the current .Rnw file. Utility function not called by user."
  (let* ((rnw-buf (current-buffer)))
    (if choose-process ;; previous behavior
        (ess-force-buffer-current "R process to load into: ")
      ;; else
      (update-ess-process-name-list)
      (cond ((= 0 (length ess-process-name-list))
             (message "no ESS processes running; starting R")
             (sit-for 1); so the user notices before the next msgs/prompt
             (R)
             (set-buffer rnw-buf)
             )
            ((not (string= "R" (ess-make-buffer-current))); e.g. Splus, need R
             (ess-force-buffer-current "R process to load into: "))
            ))

    (save-excursion
      (ess-execute (format "require(tools)")) ;; Make sure tools is loaded.
      (basic-save-buffer); do not Sweave/Stangle old version of file !
      (let* ((sprocess (get-ess-process ess-current-process-name))
             (sbuffer (process-buffer sprocess))
             (rnw-file (buffer-file-name))
             (Rnw-dir (file-name-directory rnw-file))
             (Sw-cmd
              (format
               "local({..od <- getwd(); setwd(%S); %s(%S, cacheSweaveDriver()); setwd(..od) })"
               Rnw-dir cmd rnw-file))
             )
        (message "%s()ing %S" cmd rnw-file)
        (ess-execute Sw-cmd 'buffer nil nil)
        (switch-to-buffer rnw-buf)
        (ess-show-buffer (buffer-name sbuffer) nil)))))

(defun ess-swv-weave2 ()
  "Run Sweave on the current .Rnw file."
  (interactive)
  (ess-swv-run-in-R2 "Sweave"))
;; This is a modification to allow dynamic loading of Rnw-mode.
(when (not (boundp 'Rnw-mode-hook))
  (setq Rnw-mode-hook nil ))
(defun emacsmate-add-weave2-key ()
  (define-key noweb-minor-mode-map "\M-nw" 'ess-swv-weave2))
(add-hook 'Rnw-mode-hook 'emacsmate-add-weave2-key)
