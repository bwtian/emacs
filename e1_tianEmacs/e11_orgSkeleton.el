
(define-skeleton latex-skeleton
  "Default LaTeX file initial contents."
  "Title: "
  "\\usepackage[nomain,acronym,xindy,toc]{glossaries}\n\n"
  "\\input{xGlossary}\n\n"
  "\\makeglossaries\n\n"
  "\\documentclass[a4paper]{article}\n\n"
  "\\title{}\n"
  "\\author{Bingwei Tian\\thanks{bwtian@gmail.com}}\n"
  "\\date{\\today}\n\n"
  "\\begin{document}\n\n"
  "\\maketitle\n"
  "\\begin{abstract}\n\n"
  "\\end{abstract}\n\n"
  "%\\tableofcontents\n\n"
  "\\section{Introduction}\n\n"
  "\\bibliography{}\n\n"
  "\\end{document}\n\n"
 )
(global-set-key [C-S-f2] 'latex-skeleton)
(define-skeleton rnw
  "Default rnw file initial contents."
  "Title: "
  "\\documentclass[a4paper]{artie}\n\n"
  "\\title{}\n"
  "\\author{Bingwei Tian\\thanks{bwtian@gmail.com}}\n"
  "\\date{\\today}\n\n"
  "\\begin{document}\n\n"
  "\\maketitle\n"
  "\\begin{abstract}\n\n"
  "\\end{abstract}\n\n"
  "%\\tableofcontents\n\n"
  "<<setup,include=FALSE>>=\n"
  "opts_chunk$set(echo=FALSE,results='asis',fig.align='center',fig.width=8,out.width='.8\\\\paperwidth',fig.pos='!ht',warning=FALSE)
knit_hooks$set(crop = hook_pdfcrop)\n"
  "@\n\n"
  "\\section{Introduction}\n\n"
  "\\bibliography{}\n\n"
  "\\end{document}\n\n"
 )
(global-set-key [C-S-f3] 'rnw)

    (define-skeleton comment-skeleton
    "Input #+BEGIN_COMMENT #+END_COMMENT in org-mode"
    ""
    "#+BEGIN_COMMENT\n"
    _"\n"
    "#+END_COMMENT\n")
    (global-set-key [C-ccc] 'comment-skeleton)

    (define-skeleton comment1-skeleton
    "Input code blockers in org-mode"
    ""
    "# #####################################################################\n"
    "# #\n"
    "# #####################################################################\n")
    (global-set-key [C-S-f5] 'comment1-skeleton)

    (define-skeleton comment2-skeleton
    "Input code blockers in org-mode"
    ""
    "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n"
    "%% R code chunk: \n"
    "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n")
    (global-set-key [C-S-f6] 'comment2-skeleton)

    (define-skeleton comment3-skeleton
    "Input code blockers in org-mode"
    ""
    "# =====================================================================\n"
    "# \n"
    "# =====================================================================\n")
    (global-set-key [C-S-f7] 'comment3-skeleton)

    (define-skeleton markdown-skeleton
    "Input code blockers for markdown"
    ""
    "# \n"
    "========================================================\n")
    (global-set-key [C-S-f8] 'markdown-skeleton)

    (define-skeleton latexEnd-skeleton
    "Input end to latex sub file"
    ""
    _"\n"
  "%%% Local Variables: \n"
  "%%% mode: latex \n"
  "%%% mode: outline-minor \n"
  "%%% coding: utf-8 \n"
  "%%% TeX-master: \"../main\" \n"
  "%%% TeX-engine: xetex \n"
  "%%% TeX-PDF-mode: t \n"
  "%%% End: \n")
   (global-set-key [C-S-f9] 'latexEnd-skeleton)

    (define-skeleton fig-skeleton
    "Input NAME and CAPTION in org-mode"
    ""
    "#+CAPTION: \n"
    "#+NAME: fig:study-area  \n"
    "#+NAME: tab:basic-data  \n"
    "#+tblname: basic-data \n"
    "\\begin{table}[h!]\n"
    "\\centering\n"
    "  \\caption{}\n"
    "  \\label{tab:}\n"
    "<<>>=\n"
    "kable(,row.names=FALSE,booktabs=TRUE)\n"
    "@\n"
    "\\end{table}\n"
    )
    (global-set-key [C-S-f10] 'fig-skeleton)


    (define-skeleton R-skeleton
    "Input R babel in org-mode"
    ""
    "#+HEADER: :cache yes :tangle yes :noweb yes :colnames yes :var \n"
    "#+HEADER: :export both :results output graphics :width 400 :height 300\n"
    "#+NAME: R:"str" \n"
    "#+BEGIN_SRC R :session :file ./"str".png  \n"
    ;;"###############################################################################\n"
    ;;"## R code chunk:\n"
    ;;"###############################################################################\n"
    ;; "#+ Rmd chunk \n"
    ;; "#' R Spin comments \n"
    _"\n"
    _"\n"
    "#+END_SRC\n"

    "#+CAPTION: Table/figure name Out put of above code\n"
    "#+NAME: fig:"str"  \n"
    "#+RESULTS: R:"str"  \n"
    )
    (global-set-key [C-S-f11] 'R-skeleton)

    (define-skeleton dot-skeleton
    "Input Emacs-lisp babel in org-mode"
    ""
    "#+NAME: dot:"str"\n"
    "#+HEADER: :cache yes :tangle yes :exports none\n"
    "#+HEADER: :results output graphics\n"
    "#+BEGIN_SRC dot :file ./"str".svg \n"
    ""
    "digraph { \n"
             "fontname=\"Times\"; \n"
             "fontsize = 12; \n"
             "splines = false; \n"
             "ranksep = 0.2; \n"
             "nodesep = 0.5; \n"
             "node [shape = box] \n"
             "//1. set node \n"
             _"\n"
             "//2. set path \n"
             _"\n"
             "A -> B \n" 
             "//3. set rank \n"
             "{rank = same; A, B} \n"
            "}\n"
    "" 
    "#+END_SRC\n"

    "#+CAPTION: Table/figure name Out put of above code\n"
    "#+NAME: fig:"str" \n"
    "#+RESULTS: dot:"str" \n"
    )
    (global-set-key [C-S-f12] 'dot-skeleton)
