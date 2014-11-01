
;; (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
(require 'tex-site)   ; invoke the AUCTeX package (LaTeX support)
(if (string-equal system-type "windows-nt")
    (require 'tex-mik)
  (load "auctex.el" nil t t))
(setq TeX-file-extensions
      '("Snw" "Rnw" "nw" "tex" "sty" "cls" "ltx" "texi" "texinfo"))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil) ;t for not ask 
      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;; Use Okular as the pdf viewer. Build okular 
    ;; command, so that Okular jumps to the current line 
    ;; in the viewer.
    ;; (setq TeX-view-program-selection
    ;;  '((output-pdf "PDF Viewer")))
    ;; (setq TeX-view-program-list
    ;;  '(("PDF Viewer" "okular --unique %o#src:%n%b")))
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(LaTeX-indent-level 4)
   '(TeX-engine (quote xetex))
   '(TeX-source-correlate-method (quote synctex))
   '(LaTeX-command "latex -synctex=1")
   '(TeX-source-correlate-mode t)
   '(TeX-source-correlate-start-server t)
   '(TeX-view-program-list (quote (("Okular" "okular --unique %o#src:%n%b"))))
   '(TeX-view-program-selection (quote ((output-pdf "Okular"))))
   '(show-paren-mode t))

;(unless (file-exists-p "/etc/emacs/site-start.d/50auctex.el")
 ; (load "auctex.el" nil t)
  ;(load "preview-latex" nil t))
 (load "auctex.el" nil t )
  (load "preview.el" nil t)
(add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))
