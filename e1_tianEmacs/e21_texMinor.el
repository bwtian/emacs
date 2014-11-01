
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

;; sudo apt-get install whizzytex
(autoload 'whizzytex-mode "whizzytex" "WhizzyTeX, a minor-mode WYSIWIG environment for LaTeX" t)
(setq my-toggle-whizzy-count 0)
(defun my-toggle-whizzy-mode ()
  (interactive)
  (if (= (mod my-toggle-whizzy-count 2) 0)
      (progn
        (whizzytex-mode)
        (message "WhizzyTeX on"))
    (progn
      (whizzy-mode-off)
      (kill-buffer (concat "*" (buffer-name) "*"))
      (message "WhizzyTeX off")))
  (setq my-toggle-whizzy-count (+ my-toggle-whizzy-count 1)))
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (define-key LaTeX-mode-map (kbd "<f9>") 'my-toggle-whizzy-mode)))
;; (setq LaTeX-default-options '("a4"))
;; (setq LaTeX-float "hbt")
;; (setq LaTeX-indent-level 2)
;; (setq LaTeX-item-indent 0)
;; (setq LaTeX-brace-indent-level 2)
;; ;;
;; (add-hook 'tex-mode-hook
;;        (function
;;         (lambda ()
;;           (font-lock-mode 1))))
;; ;;
;; (add-hook 'LaTeX-mode-hook
;;        (function
;;         (lambda ()
;;           (run-hooks 'tex-mode-hook))))

;; (setq TeX-open-quote "<<")
;; (setq TeX-close-quote ">>")
;; (setq TeX-insert-braces nil)
;; (setq preview-scale-function 1.3)
;; (setq LaTeX-math-menu-unicode t)
;; (require 'ac-math) ;; Latex Completion
;; (add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of {{{latex-mode}}}
;; (defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
;;   (setq ac-sources
;;      (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
;;                ac-sources)))
;; (add-hook 'latex-mode-hook 'ac-latex-mode-setup)
;; (ac-flyspell-workaround)
