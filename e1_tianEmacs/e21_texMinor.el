
(require 'company-auctex)
(company-auctex-init)
(require 'auto-complete-auctex)
(add-hook 'LaTeX-mode-hook 'company-auctex)
(add-hook 'LaTeX-mode-hook 'auto-complete-auctex)

(require 'cdlatex)
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)

(setq TeX-PDF-mode t)
;(require 'tex)
;(TeX-global-PDF-mode t)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'longlines-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flycheck-mode)
(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(require 'magic-latex-buffer)
(add-hook 'LaTex-mode-hook 'magic-latex-buffer)

;;(require 'latex-pretty-symbols)

(setq TeX-view-program-list
          '(("SumatraPDF" "SumatraPDF.exe %o") ;;Windows
            ("Gsview" "gsview32.exe %o")
            ("Okular" "okular --unique %o")
            ("Evince" "evince %o")    ;; Gnomeers
            ("Firefox" "firefox %o")))
    (cond
     ((eq system-type 'windows-nt)
      (add-hook 'LaTeX-mode-hook
                (lambda ()
                  (setq TeX-view-program-selection '((output-pdf "SumatraPDF")
                                                     (output-dvi "Yap"))))))
     ((eq system-type 'gnu/linux)
      (add-hook 'LaTeX-mode-hook
                (lambda ()
                  (setq TeX-view-program-selection '((output-pdf "Okular")
                                                     (output-dvi "Okular")))))))
