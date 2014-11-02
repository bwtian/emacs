
;; (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
(require 'tex-site)   ; invoke the AUCTeX package (LaTeX support)
(if (string-equal system-type "windows-nt")
    (require 'tex-mik))
(setq TeX-file-extensions
      '("Snw" "Rnw" "nw" "tex" "sty" "cls" "ltx" "texi" "texinfo"))
(setq TeX-default-mode 'LaTeX-mode) ;; Use auctex

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-electric-escape t)  ; make \ = C-c C-m
(setq TeX-electric-sub-and-superscript t)
(setq TeX-show-compilation t) ; display compilation windows
(setq TeX-auto-untabify t)     ; remove all tabs before saving
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
;; C-c C-c
  (require 'auctex-latexmk)
  (auctex-latexmk-setup)

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
                                                     (output-dvi "Yap")
                                                     )))))
     ((eq system-type 'gnu/linux)
      (add-hook 'LaTeX-mode-hook
                (lambda ()
                  (setq TeX-view-program-selection '((output-pdf "Okular")
                                                     (output-dvi "Okular")
        ))))))

(require 'reftex)
    (setq reftex-default-bibliography '(
                                        ;;"/home/tian/Dropbox/4refs/bib/library.bib"
                                        "/home/tian/SparkleShare/p1402/p1402-cited.bib"
                                        ))
    (setq reftex-file-extensions
          '(("Snw" "Rnw" "nw" "tex" ".tex" ".ltx") ("bib" ".bib")))
    ;; Make RefTeX faster
  (setq reftex-enable-partial-scans t)
  (setq reftex-keep-temporary-buffers nil)
  (setq reftex-enable-partial-scans t)
  (setq reftex-allow-automatic-rescan nil)
  (setq reftex-use-multiple-selection-buffers t)
  (setq reftex-external-file-finders   
        '(("tex" . "kpsewhich -format=.tex %f")   
          ("bib" . "kpsewhich -format=.bib %f")))
  (autoload 'reftex-mode     "reftex" "RefTeX Minor Mode" t) 
  (autoload 'turn-on-reftex  "reftex" "RefTeX Minor Mode" nil) 
  (autoload 'reftex-citation "reftex-cite" "Make citation" nil) 
  (autoload 'reftex-index-phrase-mode "reftex-index" "Phrase mode" t) 
(setq reftex-toc-split-windows-horizontally t) 
(setq reftex-toc-split-windows-horizontally-fraction 0.15) 
(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
(add-hook 'Tex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
;; Change key bindings
(add-hook 'reftex-mode-hook
 '(lambda ()
               (define-key reftex-mode-map (kbd "\C-cr") 'reftex-reference)
               (define-key reftex-mode-map (kbd "\C-cl") 'reftex-label)
               (define-key reftex-mode-map (kbd "\C-cc") 'reftex-citation)
))

(defun org-mode-reftex-setup ()
  (interactive)
  (load-library "reftex")
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all)))
(add-hook 'org-mode-hook 'org-mode-reftex-setup)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(define-key org-mode-map (kbd "C-c )") 'reftex-citation)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)

(setq org-latex-pdf-process
            '("pdflatex -interaction nonstopmode -output-directory %o %f"
              "bibtex %b"
              "pdflatex -interaction nonstopmode -output-directory %o %f"
              "pdflatex -interaction nonstopmode -output-directory %o %f"))
    ;; (setq org-latex-pdf-process
    ;;         '("pdflatex -interaction nonstopmode -output-directory %o %f"
    ;;           "biber %b"
    ;;           "pdflatex -interaction nonstopmode -output-directory %o %f"
    ;;           "pdflatex -interaction nonstopmode -output-directory %o %f"))
  ;;;; biber
  ;; (setq org-latex-to-pdf-process 
  ;;    '("pdflatex %f" "biber %b" "pdflatex %f" "pdflatex %f"))
;(setq org-latex-to-pdf-process
;'("xelatex -interaction nonstopmode %b"
;"xelatex -interaction nonstopmode %b"))

(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; with AUCTeX LaTeX mode
(setq reftex-plug-into-AUCTeX t)
(setq reftex-plug-into-auctex t)

(add-hook 'yatex-mode-hook 'turn-on-reftex) ; with YaTeX mode

(defun my-bibliography-selector-hook (backend)
    (case backend
      (latex
       (when (save-excursion
               (re-search-forward "^[ \t]*\\bibliography\\(?:style\\)?{" nil t))
         (while (re-search-forward "^[ \t]*#+BIBLIOGRAPHY:.*$" nil t)
           (when (eq (org-element-type (save-match-data (org-element-at-point)))
                     'keyword)
             (replace-match "")))))
      (html
       (when (save-excursion
               (re-search-forward "^[ \t]*#+BIBLIOGRAPHY:.*$" nil t))
         (while (re-search-forward "^[ \t]*\\bibliography\\(?:style\\)?{.*$" nil t)
           (replace-match ""))))))

(add-hook 'org-export-before-parsing-hook 'my-bibliography-selector-hook)
