
(setq org-latex-default-class "koma-article")

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
