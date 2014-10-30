
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
(setq TeX-electric-sub-and-superscript t)
(setq-default TeX-master t) ; t for not ask 
(setq TeX-engine 'xelatex)  ; or latex, pdftex
(setq preview-scale-function 1.5)

(setq TeX-source-correlate-method 'synctex)
;; Enable synctex generation. Even though the command shows
;; as "latex" pdflatex is actually called
(custom-set-variables '(LaTeX-command "latex -synctex=1") )
