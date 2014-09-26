
;; (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
  (require 'tex-site)   ; invoke the AUCTeX package (LaTeX support)
  (if (string-equal system-type "windows-nt")
      (require 'tex-mik))
(setq TeX-file-extensions
      '("Snw" "Rnw" "nw" "tex" "sty" "cls" "ltx" "texi" "texinfo"))

(load "auctex-pkg.el" nil t t)
(load "latex.el" nil t t)

(setq TeX-auto-save t)
(setq LaTeX-math-mode t)
(setq TeX-electric-escape t)
(setq TeX-parse-self t)

(setq-default TeX-master nil)
(setq TeX-PDF-mode t) ;; compile documents to PDF by default

(mapc (lambda (mode)
           (add-hook 'LaTeX-mode-hook mode))
           (list 'auto-fill-mode
                 'LaTeX-math-mode
                 'turn-on-reftex
                 'linum-mode
                 'visual-line-mode
                 'folding-mode 
                 'flyspell-mode))
(add-hook 'LaTeX-mode-hook
             (lambda ()
               (setq TeX-auto-untabify t     ; remove all tabs before saving
                     TeX-engine 'xetex       ; use xelatex default
                     TeX-show-compilation t) ; display compilation windows
               (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
               (setq TeX-save-query nil)
               (imenu-add-menubar-index)
               ;;(setq TeX-open-quote "«~")
               ;;(setq TeX-close-quote "~»")
               (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

(eval-after-load "tex"
      '(add-to-list 'TeX-command-list '("latexmk" "latexmk -synctex=1 -shell-escape -pdf %s" TeX-run-TeX nil t :help "Process file with latexmk")))
(eval-after-load "tex"
      '(add-to-list 'TeX-command-list '("xelatexmk" "latexmk -synctex=1 -shell-escape -xelatex %s" TeX-run-TeX nil t :help "Process file with xelatexmk")))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))

(require 'tex-buf)
(defun TeX-command-default (name)
  "Next TeX command to use. Most of the code is stolen from `TeX-command-query'."
  (cond ((if (string-equal name TeX-region)
             (TeX-check-files (concat name "." (TeX-output-extension))
                              (list name)
                              TeX-file-extensions)
           (TeX-save-document (TeX-master-file)))
         TeX-command-default)
        ((and (memq major-mode '(doctex-mode latex-mode))
              (TeX-check-files (concat name ".bbl")
                               (mapcar 'car
                                       (LaTeX-bibliography-list))
                               BibTeX-file-extensions))
         ;; We should check for bst files here as well.
         TeX-command-BibTeX)
        ((TeX-process-get-variable name
                                   'TeX-command-next
                                   TeX-command-Show))
        (TeX-command-Show)))

;;;  from wiki
(defcustom TeX-texify-Show t
  "Start view-command at end of TeX-texify?"
  :type 'boolean
  :group 'TeX-command)

(defcustom TeX-texify-max-runs-same-command 5
  "Maximal run number of the same command"
  :type 'integer
  :group 'TeX-command)

(defun TeX-texify-sentinel (&optional proc sentinel)
  "Non-interactive! Call the standard-sentinel of the current LaTeX-process.
If there is still something left do do start the next latex-command."
  (set-buffer (process-buffer proc))
  (funcall TeX-texify-sentinel proc sentinel)
  (let ((case-fold-search nil))
    (when (string-match "\\(finished\\|exited\\)" sentinel)
      (set-buffer TeX-command-buffer)
      (unless (plist-get TeX-error-report-switches (intern (TeX-master-file)))
        (TeX-texify)))))

(defun TeX-texify ()
  "Get everything done."
  (interactive)
  (let ((nextCmd (TeX-command-default (TeX-master-file)))
        proc)
    (if (and (null TeX-texify-Show)
             (equal nextCmd TeX-command-Show))
        (when  (called-interactively-p 'any)
          (message "TeX-texify: Nothing to be done."))
      (TeX-command nextCmd 'TeX-master-file)
      (when (or (called-interactively-p 'any)
                (null (boundp 'TeX-texify-count-same-command))
                (null (boundp 'TeX-texify-last-command))
                (null (equal nextCmd TeX-texify-last-command)))
        (mapc 'make-local-variable '(TeX-texify-sentinel TeX-texify-count-same-command TeX-texify-last-command))
        (setq TeX-texify-count-same-command 1))
      (if (>= TeX-texify-count-same-command TeX-texify-max-runs-same-command)
          (message "TeX-texify: Did %S already %d times. Don't want to do it anymore." TeX-texify-last-command TeX-texify-count-same-command)
        (setq TeX-texify-count-same-command (1+ TeX-texify-count-same-command))
        (setq TeX-texify-last-command nextCmd)
        (and (null (equal nextCmd TeX-command-Show))
             (setq proc (get-buffer-process (current-buffer)))
             (setq TeX-texify-sentinel (process-sentinel proc))
             (set-process-sentinel proc 'TeX-texify-sentinel))))))

(add-hook 'LaTeX-mode-hook
         '(lambda ()
            (define-key LaTeX-mode-map (kbd <"C-c C-a">) 'TeX-texify)))
