
(require 'org)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))  (add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.todo\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.note\\'" . org-mode))
(setq default-major-mode 'org-mode) ; for no suffix file such as README

;; Turn on Headline indent without many stars
(setq org-startup-indented t) ;nil for show stars; t for intedent
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(setq org-export-with-smart-quotes t)
'(org-cycle-include-plain-lists t)
'(org-hide-leading-stars t)
'(org-alphabetical-lists t)

(add-hook 'org-mode-hook (lambda () (abbrev-mode 1)))
(add-hook 'org-mode-hook 'turn-on-font-lock)    ; Org buffers only
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(add-hook 'message-mode-hook 'turn-on-orgtbl)

(org-add-link-type
 "color" nil
 (lambda (path desc format)p
  (cond
   ((eq format 'html)
    (format "<span style=\"color:%s;\">%s</span>" path desc))
   ((eq format 'latex)
    (format "{\\color{%s}%s}" path desc)))))

(org-add-link-type
 "hl" nil
 (lambda (path desc format)
  (cond
   ((eq format 'html)
    (format "<font style=\"background-color:%s;\">%s</font>" path desc))
   ((eq format 'latex)
    (format "\\colorbox{%s}{%s}" path desc))))) ;; require \usepackage{color}

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key [f2] 'org-mode)
(add-hook 'org-mode-hook 
          (lambda ()
            (local-set-key "\M-n" 'outline-next-visible-heading)
            (local-set-key "\M-p" 'outline-previous-visible-heading)
            ;; table
            (local-set-key "\C-\M-w" 'org-table-copy-region)
            (local-set-key "\C-\M-y" 'org-table-paste-rectangle)
            (local-set-key "\C-\M-l" 'org-table-sort-lines)
            ;; display images
            (local-set-key "\M-I" 'org-toggle-iimage-in-org)
            ;; fix tab
            (local-set-key "\C-y" 'yank)))

(require 'ox-latex)
(require 'ox-beamer)
(require 'ox-odt)
(require 'ox-html)
;;(require 'ox-deck)
(require 'ox-publish)
;;(require 'ox-bibtex)
;;(require 'ox-koma-letter)
;;(require 'org-notmuch)
(require 'ox-reveal)
