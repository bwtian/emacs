
(autoload 'R-mode "ess-site" "Emacs Speaks Statistics mode" t)
(setq-default inferior-R-program-name "R")  ;; Search R in a nonstandard location on Linux
(setq-default ess-dialect "R")
(setq-default inferior-R-args "--no-restore-history --no-save ")
(setq ess-local-process-name "R")
(defun ess-set-language ()
  (setq-default ess-language "R")
  (setq ess-language "R")
  )
(add-hook 'ess-post-run-hook 'ess-set-language t)

(setq auto-mode-alist
      (cons (cons "\\.r$|\\.R$" 'R-mode) auto-mode-alist))


;; *.r.txt and *.R.txt files activate r-mode            ; Obsolete. Just set TextEdit.app for .R in Finder
;; Maybe useful for result files, open with ESS (emacs) or TextEdit.app (GUI) automatically
(setq auto-mode-alist
      (cons '("\\.r\\.txt$" . R-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.R\\.txt$" . R-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.RRR$" . R-mode) auto-mode-alist))

(require 'ess-R-object-popup)
(define-key ess-mode-map (kbd "C-c s") 'ess-R-object-popup)
;; the alist
(setq ess-R-object-popup-alist
      '((numeric    . "summary")
        (factor     . "table")
        (integer    . "summary")
        (lm         . "summary")
        (other      . "str")))

(define-key ess-mode-map (kbd "C-c V") 'ess-R-dv-ctable)
(define-key ess-mode-map (kbd "C-c v") 'ess-R-dv-pprint)

(require 'ac-R)

;; (require 'inlineR)
;; (setq inlineR-re-funcname "plot\|image\|hogehoge\|my-func")
;; (setq inlineR-default-image "png")
;; (setq inlineR-default-dir "/tmp/")
;; (setq inlineR-cairo-p t)
