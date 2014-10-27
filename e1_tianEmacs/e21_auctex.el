
;; (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
(require 'tex-site)   ; invoke the AUCTeX package (LaTeX support)
(if (string-equal system-type "windows-nt")
    (require 'tex-mik))

(load "auctex.el" nil t t)
(load "preview.el" nil t t)
(setq TeX-file-extensions
      '("Snw" "Rnw" "nw" "tex" "sty" "cls" "ltx" "texi" "texinfo"))
(add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))
;;(load "preview-latex.el" nil t t)
;;(load "auctex-pkg.el" nil t t)
(load "latex.el" nil t t) ;; import for not ask master files

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-electric-escape t)
(setq-default TeX-master t) ; t for not ask 


(require 'cdlatex)
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex) ; with AUCTeX LaTeX mode 

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'folding-mode)
(add-hook 'TeX-mode-hook 'font-lock-mode)
(add-hook 'LaTeX-mode-hook 'font-lock-mode)

;(setq LaTeX-math-mode t)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(setq TeX-engine 'pdflatex)
;(setq TeX-PDF-mode t) ;; use pdflatex instead of latex by default
(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode) ;Take this out to compile to DVI, instead.

(setq TeX-source-correlate-method 'synctex)
;; Enable synctex generation. Even though the command shows
;; as "latex" pdflatex is actually called
(custom-set-variables '(LaTeX-command "latex -synctex=1") )

(add-hook 'LaTeX-mode-hook
               (lambda ()
                 (setq TeX-auto-untabify t     ; remove all tabs before saving
                       ;;TeX-engine 'xetex       ; use xelatex default
                       TeX-show-compilation t) ; display compilation windows
                 (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
                 (setq TeX-save-query nil)
                 (imenu-add-menubar-index)
                 ;;(setq TeX-open-quote "«~")
                 ;;(setq TeX-close-quote "~»")
                 (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))
