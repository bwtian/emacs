
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
