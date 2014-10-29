
;; C-c C-e t
  (define-skeleton org-skeleton
  "Header info for a emacs-org file."
  "Title: "
  "# -*- mode: org; org-export-babel-evaluate: nil -*- \n"
  "#+TITLE:" str " \n"
  "#+AUTHOR: Bingwei TIAN\n"
  "#+EMAIL: bwtian@gmail.com\n"
  "#+DATE:" today "\n"
  "#+OPTIONS: H:4 toc:2 num:2 \n"
  "#+STARTUP: align fold nodlcheck hidestars oddeven lognotestate inlineimages \n"
  "#+LICENSE: GPLv3 \n"
  "#+CREATED:  \n"
  "#+LASTEDIT:  \n"
  "#+CATEGORIES: Org-babel, R and R function file \n"
  "#+PROPERTY:   header-args  session *R* \n"
  "#+PROPERTY:   exports both  \n"
  "#+PROPERTY:   cache yes \n"
  "#+PROPERTY:   tangle yes \n"
  "#+DEPENDENCY:"  " \n")
  (global-set-key [C-S-f1] 'org-skeleton)


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

  (define-skeleton latex-skeleton
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
 (global-set-key [C-S-f9] 'latex-skeleton)

  (define-skeleton fig-skeleton
  "Input NAME and CAPTION in org-mode"
  ""
  "#+CAPTION: \n"
  "#+NAME: fig:study-area  \n"
  "#+NAME: tab:basic-data  \n"
  "#+tblname: basic-data \n"

  )
  (global-set-key [C-S-f10] 'fig-skeleton)


  (define-skeleton R-skeleton
  "Input R babel in org-mode"
  ""

  "#+HEADER: :cache yes :tangle yes :noweb yes :colnames yes :var \n"
  "#+HEADER: :export both :results output graphics :width 400 :height 300\n"
  "#+NAME: R:figA \n"
  "#+BEGIN_SRC R :session :file ../figs/test.png  \n"
  ;;"###############################################################################\n"
  ;;"## R code chunk:\n"
  ;;"###############################################################################\n"
  ;; "#+ Rmd chunk \n"
  ;; "#' R Spin comments \n"
  _"\n"
  _"\n"
  "#+END_SRC\n"

  "#+CAPTION: Table/figure name Out put of above code\n"
  "#+NAME: fig:A  \n"
  "#+RESULTS: R:figA  \n"
  )
  (global-set-key [C-S-f11] 'R-skeleton)


  (define-skeleton dot-skeleton
  "Input Emacs-lisp babel in org-mode"
  ""
  "#+NAME: fig: \n"
  "#+HEADER: :cache yes :tangle yes :exports none\n"
  "#+HEADER: :results output graphics\n"
  "#+BEGIN_SRC dot :file" str" \n"
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
           "//3. set rank \n"
           "{rank = same; A, B} \n"
          "}\n"
  "" 
  "#+END_SRC\n"
  )
  (global-set-key [C-S-f12] 'dot-skeleton)
