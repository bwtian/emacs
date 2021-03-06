
;; C-c C-e t
(define-skeleton org-skeleton
"Header info for a emacs-org file."
"Title: "
"# -*- mode: org; org-export-babel-evaluate: nil -*- \n"
"#+TITLE:" str " \n"
"#+AUTHOR: Bingwei TIAN\n"
"#+EMAIL: bwtian@gmail.com\n"
"#+DATE:  \today\n"
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
(global-set-key [C-S-f4] 'org-skeleton)


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

(define-skeleton knitr-markdown
"Input R chunk in knitr-markdown"
""
"# \n"
"========================================================\n"
"```{r }\n"
_"\n"
_"\n"
"```\n")
(global-set-key [C-S-f9] 'knitr-markdown)

(define-skeleton fig-skeleton
"Input NAME and CAPTION in org-mode"
""
"#+CAPTION: \n"
"#+NAME: fig:study-area  \n"
"#+NAME: tab:basic-data  \n"
)
(global-set-key [C-S-f10] 'fig-skeleton)


(define-skeleton R-skeleton
"Input R babel in org-mode"
""
"#+NAME: r: \n"
"#+HEADER: :cache yes :tangle yes\n"
"#+BEGIN_SRC R :session :file ~/Dropbox/3figs/iamg/preffix-.png :results graphics\n"
"###############################################################################\n"
"## R code chunk:\n"
"###############################################################################\n"
;; "#+ Rmd chunk \n"
;; "#' R Spin comments \n"
_"\n"
_"\n"
"#+END_SRC\n"
"#+NAME: fig:study-area  \n"
"#+CAPTION: Table/figure name Out put of above code\n"
)
(global-set-key [C-S-f11] 'R-skeleton)


(define-skeleton emacs-lisp-skeleton
"Input Emacs-lisp babel in org-mode"
""
"#+NAME: fig: \n"
"#+HEADER: :cache yes :tangle yes :exports none\n "
"#+HEADER: :results output graphics\n"
"#+BEGIN_SRC dot :file ~/Dropbox/3figs/test<2014-07-28 Mon>.png \n"
_"\n"
"#+END_SRC\n"
)
(global-set-key [C-S-f12] 'emacs-lisp-skeleton)
