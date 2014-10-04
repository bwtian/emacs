
;; (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
  (require 'tex-site)   ; invoke the AUCTeX package (LaTeX support)
  (if (string-equal system-type "windows-nt")
      (require 'tex-mik))
(setq TeX-file-extensions
      '("Snw" "Rnw" "nw" "tex" "sty" "cls" "ltx" "texi" "texinfo"))

(load "auctex.el" nil t t)
;;(load "auctex-pkg.el" nil t t)
;;(load "latex.el" nil t t) ;; import for not ask master files

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq LaTeX-math-mode t)
(setq TeX-electric-escape t)
(setq TeX-engine 'pdflatex)
(setq TeX-PDF-mode t) ;; use pdflatex instead of latex by default

(setq TeX-source-correlate-method 'synctex)
;; Enable synctex generation. Even though the command shows
;; as "latex" pdflatex is actually called
(custom-set-variables '(LaTeX-command "latex -synctex=1") )

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'folding-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; enable auto-fill mode, nice for text
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
