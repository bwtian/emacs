
;; (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
  (require 'tex-site)   ; invoke the AUCTeX package (LaTeX support)
  (if (string-equal system-type "windows-nt")
      (require 'tex-mik))
;(setq TeX-file-extensions
;      '("Snw" "Rnw" "nw" "tex" "sty" "cls" "ltx" "texi" "texinfo"))

;; (load "auctex-pkg.el" nil t t)
 (load "latex.el" nil t t) ;; import for not ask master files

(setq TeX-auto-save t)
(setq LaTeX-math-mode t)
(setq TeX-electric-escape t)
(setq TeX-parse-self t)

(setq-default TeX-master nil)
;;(setq TeX-PDF-mode t) ;; compile documents to PDF by default
