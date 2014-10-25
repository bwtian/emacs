
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

;; Inline Images 
  (add-hook 'org-mode-hook 'org-display-inline-images) 
  ;; Inline Images for Babel
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
  ;; Inline Images for Screenshot
  ;;(require 'org-screenshot)
  ;; iImage
;; -- Display images in org mode
;; enable image mode first
(iimage-mode)
;; add the org file link format to the iimage mode regex
(add-to-list 'iimage-mode-image-regex-alist
             (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex "\\)\\]") 1))
;; add a hook so we can display images on load
(add-hook 'org-mode-hook '(lambda () (org-turn-on-iimage-in-org)))
;; function to setup images for display on load
(defun org-turn-on-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (turn-on-iimage-mode)
  (set-face-underline-p 'org-link nil))
;; function to toggle images in a org bugger
(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (call-interactively 'iimage-mode))
;; I have this function bound to C-l with a call like this:
(define-key org-mode-map (kbd "C-S-a") 'org-archive-subtree)


  ;; (defun do-org-show-all-inline-images ()
  ;; (interactive)
  ;; (org-display-inline-images t t))
  ;; (global-set-key (kbd "C-c C-x C-v")
  ;;               'do-org-show-all-inline-images)

  ;; (setq org-export-htmlize-output-type 'css)

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
