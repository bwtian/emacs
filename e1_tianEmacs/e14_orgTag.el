
(require 'ox-latex)
(defun sa-ignore-headline (contents backend info)
  "Ignore headlines with tag `ignoreheading'."
  (when (and (org-export-derived-backend-p backend 'latex 'html 'ascii)
             (string-match "\\`.*ignoreheading.*\n"
                           (downcase contents)))
    (replace-match "" nil nil contents)))
(add-to-list 'org-export-filter-headline-functions 'sa-ignore-headline)
(setq org-ascii-underline (quote ((ascii) (latin1) (utf-8))))

(setq org-tag-alist (quote ((:startgroup)
                            ("noexport" . ?n)
                            ("export" . ?e)
                            ("ignoreheading" . ?i)
                            (:endgroup)

                            (:startgroup)
                            ("@plan" . ?p)
                            ("@write" . ?w)
                            ("@home" . ?H)
                            ("@farm" . ?F)
                            ("@trip" . ?T)
                            (:endgroup)
                            (:startgroup)
                            ("@errand" . ?E)
                            ("@work" . ?W)
                            ("@home" . ?H)
                            ("@farm" . ?F)
                            ("@trip" . ?T)
                            (:endgroup)


                            (:startgroup . nil)
                            ("@read" . nil)
                            (:grouptags . nil)
                            ("@read_book" . nil)
                            ("@read_ebook" . nil)
                            (:endgroup . nil)
                            ("TODO" . ?t)
                            ("WAITING" . ?w)
                            ("HOLD" . ?h)

                           
                            ("FLAGGED" . ??))))

; Allow setting single tags without the menu
(setq org-fast-tag-selection-single-key (quote expert))

; For tag searches ignore tasks with scheduled and deadline dates
(setq org-agenda-tags-todo-honor-ignore-options t)
