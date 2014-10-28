
(add-to-list 'org-src-lang-modes (quote ("dot" . graphviz-dot)))
  ;;(require 'org-install)
  (require 'ob-tangle)
  (require 'ob-clojure)
  (org-babel-do-load-languages
  'org-babel-load-languages
  '(
    (emacs-lisp  . t)
    (sh          . t)
    (R           . t)
    (org         . t)
    (latex       . t)
    (python      . t)
    (ruby        . t)
    (perl        . t)
    (js          . t)
    (scheme      . t)
    (C           . t)
    (clojure     . t)
    (dot         . t)
    (lilypond    . t)
    (octave      . t)
    (gnuplot     . t)
    (screen      . nil)
   ; (shell       . t) ;; not work
    (sql         . nil)
    (sqlite      . t)
    (ditaa       . t)
    (plantuml    . t)
    ))
  

  (setq org-confirm-babel-evaluate nil) ;;; Do not prompt to confirm evaluation

  ;;;; Use the current window for indirect buffer display
  (setq org-indirect-buffer-display 'current-window)
  (setq org-src-window-setup 'current-window) ;; After C-c '
  (setq org-src-fontify-natively t) ;; syntax highlighting fontify code in code blocks
 
;;graphviz mode for dot hilight in babel
;;install graphviz
(load "graphviz-dot-mode.el")
(add-to-list 'org-src-lang-modes (quote ("dot" . graphviz-dot)))
(add-hook 'graphviz-dot-mode-hook (lambda () (local-set-key [f5] "\C-x\C-s\C-cc\C-m\C-cp")))

;; ditaa
;; sudo apt-get install ditaa


;; R-babel Languages set up for windows
  (if (string-equal system-type "windows-nt")
  (setq org-babel-R-command "C:/PROGRA~1/R/R-3.1.0/bin/x64/R --slave --no-save"))  
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images) 
  (add-hook 'org-mode-hook 'org-display-inline-images)

(setq org-babel-default-header-args
                   (list '(:session . "*R*")
                         '(:eval . ,(if (getopt "evaluate") "yes" "no"))
                         '(:results . "output replace")
                         '(:exports . "both")
                         '(:cache . "yes")
                         '(:noweb . "yes")
                         '(:hlines . "no")
                         '(:tangle . "no")
                         '(:padnewline . "yes")
                         ))
