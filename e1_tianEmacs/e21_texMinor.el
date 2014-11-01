
(require 'company-auctex)
(company-auctex-init)
(require 'auto-complete-auctex)

(require 'cdlatex)
(add-hook 'LaTex-mode-hook 'turn-on-cdlatex)

(setq TeX-PDF-mode t)
;(require 'tex)
;(TeX-global-PDF-mode t)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'longlines-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flycheck-mode)
(add-hook 'LaTeX-mode-hook 'linum-mode)
(add-hook 'LaTeX-mode-hook 'folding-mode)
(add-hook 'LaTeX-mode-hook 'font-lock-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(require 'magic-latex-buffer)
(add-hook 'LaTex-mode-hook 'magic-latex-buffer)

;;(require 'latex-pretty-symbols)
