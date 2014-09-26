
(require 'reftex)
(setq reftex-default-bibliography '("/home/tian/Dropbox/4refs/bib/library.bib"))
(setq reftex-file-extensions
      '(("Snw" "Rnw" "nw" "tex" ".tex" ".ltx") ("bib" ".bib")))
;; Make RefTeX faster
(setq reftex-enable-partial-scans t)
(setq reftex-keep-temporary-buffers nil)
(setq reftex-enable-partial-scans t)
(setq reftex-allow-automatic-rescan nil)

(autoload 'reftex-mode     "reftex" "RefTeX Minor Mode" t) 
(autoload 'turn-on-reftex  "reftex" "RefTeX Minor Mode" nil) 
(autoload 'reftex-citation "reftex-cite" "Make citation" nil) 
(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase mode" t) 

(when (locate-library "zotero")
      (add-hook 'TeX-mode-hook 'zotero-minor-mode))

(defun org-mode-reftex-setup ()
  (interactive)
  (load-library "reftex")
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all)))
(add-hook 'org-mode-hook 'org-mode-reftex-setup)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(define-key org-mode-map (kbd "C-c )") 'reftex-citation)

(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode

(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; with AUCTeX LaTeX mode
(setq reftex-plug-into-AUCTeX t)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; with Rnw mode
