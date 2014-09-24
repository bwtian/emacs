
(setq org-latex-classes '(
                             ("book"
                              "\\documentclass{book}"
                              ("\\part{%s}" . "\\part*{%s}")
                              ("\\chapter{%s}" . "\\chapter*{%s}")
                              ("\\section{%s}" . "\\section*{%s}")
                              ("\\subsection{%s}" . "\\subsection*{%s}")
                              ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
                             ("org-article"
                              "\\documentclass{org-article}
   [NO-DEFAULT-PACKAGES]
   [PACKAGES]
   [EXTRA]"
                              ("\\section{%s}" . "\\section*{%s}")
                              ("\\subsection{%s}" . "\\subsection*{%s}")
                              ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                              ("\\paragraph{%s}" . "\\paragraph*{%s}")
                              ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
                             ("article"
                              "\\documentclass{article}"
                              ("\\section{%s}" . "\\section*{%s}")
                              ("\\subsection{%s}" . "\\subsection*{%s}")
                              ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                              ("\\paragraph{%s}" . "\\paragraph*{%s}")
                              ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
                             ("koma-article"
                              "\\documentclass{scrartcl}"
  ;; [NO-DEFAULT-PACKAGES]
  ;; [EXTRA]"
                              ("\\section{%s}" . "\\section*{%s}")
                              ("\\subsection{%s}" . "\\subsection*{%s}")
                              ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                              ("\\paragraph{%s}" . "\\paragraph*{%s}")
                              ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
                            
                             ("jsarticle"
                              "\\documentclass{jsarticle}
  \\usepackage[dvipdfmx]{graphicx}
  \\usepackage{url}
  \\usepackage{atbegshi}
  \\AtBeginShipoutFirst{\\special{pdf:tounicode EUC-UCS2}}
  \\usepackage[dvipdfmx,setpagesize=false]{hyperref}
   [NO-DEFAULT-PACKAGES]
   [PACKAGES]
   [EXTRA]"
                              ("\\section{%s}" . "\\section*{%s}")
                              ("\\subsection{%s}" . "\\subsection*{%s}")
                              ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                              ("\\paragraph{%s}" . "\\paragraph*{%s}")
                              ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
                             
                             ("jsbook"
                              "\\documentclass{jsbook}
  \\usepackage[dvipdfmx]{graphicx}
  \\usepackage{url}
  \\usepackage{atbegshi}
  \\AtBeginShipoutFirst{\\special{pdf:tounicode EUC-UCS2}}
  \\usepackage[dvipdfmx,setpagesize=false]{hyperref}
   [NO-DEFAULT-PACKAGES]
   [PACKAGES]
   [EXTRA]"
                              ("\\chapter{%s}" . "\\chapter*{%s}")
                              ("\\section{%s}" . "\\section*{%s}")
                              ("\\subsection{%s}" . "\\subsection*{%s}")
                              ("\\subsubsection{%s}" . "\\subsubsection*{%(setq  )}")
                              ("\\paragraph{%s}" . "\\paragraph*{%s}")
                              ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
                             ))
(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass[presentation]{beamer}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

(setq org-latex-pdf-process
       '("pdflatex %f" "pdflatex %f" "pdflatex %f"))
(setq org-latex-default-class "koma-article")

(add-to-list 'org-beamer-environments-extra
             '("onlyenv" "O" "\\begin{onlyenv}%a" "\\end{onlyenv}"))
(add-to-list 'org-beamer-environments-extra
             '("textpos" "X" "\\begin{textblock}{10}(3,3) \\visible %a {" "} \\end{textblock}"))
(add-to-list 'org-beamer-environments-extra
             '("textpos1" "w" "\\begin{textblock}{%h}(3,3) \\visible %a {" "} \\end{textblock}"))

(setq org-latex-to-pdf-process 
   '("pdflatex %f" "biber %b" "pdflatex %f" "pdflatex %f"))

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

(add-to-list 'load-path "~/.emacs.d/elpa/bibretrieve-20131013.1132/bibretrieve")
(byte-recompile-directory "~/.emacs.d/elpa/bibretrieve-20131013.1132" 0)
(load "bibretrieve")
(setq bibretrieve-backends '(("citebase" . 10) ("mrl" . 10) ("arxiv" . 5) ("zbm" . 5)))

(defun bibretrieve-scholar-create-url (author title)

  (let ((tempfile (make-temp-file "scholar" nil ".bib")))

    (call-process-shell-command "~/bin/gscholar/gscholar/gscholar.py --all" nil nil nil 
                (if (> (length author) 0) (concat "\"" author "\""))
                (if (> (length title) 0)  (concat "\"" title "\""))
                (concat " > " tempfile))
    (concat "file://" tempfile)
))

(defun bibretrieve-scholar ()
  (interactive)
  (setq mm-url-use-external t)
  (setq bibretrieve-backends '(("scholar" . 5)))
  (bibretrieve)
  (setq mm-url-use-external nil)
)

(defun bibretrieve-amazon-create-url (author title)
  (concat "http://lead.to/amazon/en/?key="(mm-url-form-encode-xwfu title) "&si=ble&op=bt&bn=&so=sa&ht=us"))

(defun bibretrieve-amazon ()
  (interactive)
  (setq mm-url-use-external t)
  (setq mm-url-program "w3m")
  (setq mm-url-arguments (list "-dump"))
  (setq bibretrieve-backends '(("amazon" . 5)))
  (bibretrieve)
  (setq mm-url-use-external nil)
)
