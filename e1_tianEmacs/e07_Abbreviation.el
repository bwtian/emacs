;; turn on abbrev mode globally
  (setq default-abbrev-mode t)
  (setq abbrev-file-name             ;; tell emacs where to read abbrev
          "~/SparkleShare/emacs.d/00_setEmacs/share/abbrevDic")    ;; definitions from...
  ;(setq save-abbrevs t)              ;; save abbrevs when files are saved
                                       ;; you will be asked before the abbreviations are saved
  ;; stop asking whether to save newly added abbrev when quitting emacs
  (setq save-abbrevs t)
  ;;(setq save-abbrevs nil)
  (quietly-read-abbrev-file)       ;; reads the abbreviations file on startup
  ;Avoid errors if the abbrev-file is missing
  (if (file-exists-p abbrev-file-name)
          (quietly-read-abbrev-file))
(setq dabbrev-case-fold-search nil) ; ignore up and lowcase
(setq dabbrev-abbrev-char-regexp "[A-z0-9:-]") ;; mathc words

;; Command completion with Alt-space
(define-key global-map (kbd "C-M-/") 'expand-abbrev)
(global-set-key (kbd "\M- ") 'dabbrev-expand)
(global-set-key (kbd "M-RET") 'dabbrev-expand)
(global-set-key (kbd "M-<tab>") 'dabbrev-expand)

(global-set-key "\C-o" 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(yas/hippie-try-expand
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

;(require 'pabbrev)
;(global-pabbrev-mode)
(setq pabbrev-idle-timer-verbose nil)
; Let Pabbrev popup
;;(require 'popup)
(defun pabbrevx-suggestions-goto-buffer (suggestions)
  (let* ((candidates (mapcar 'car suggestions))
         (bounds (pabbrev-bounds-of-thing-at-point))
         (selection (popup-menu* candidates
                                 :point (car bounds)
                                 :scroll-bar t)))
    (when selection
      ;; modified version of pabbrev-suggestions-insert
      (let ((point))
        (save-excursion
          (progn
            (delete-region (car bounds) (cdr bounds))
            (insert selection)
            (setq point (point))))
        (if point
            (goto-char point))
        ;; need to nil this so pabbrev-expand-maybe-full won't try
        ;; pabbrev expansion if user hits another TAB after ac aborts
        (setq pabbrev-last-expansion-suggestions nil)
        ))))
(fset 'pabbrev-suggestions-goto-buffer 'pabbrevx-suggestions-goto-buffer)

(define-abbrev-table 'global-abbrev-table '(

    ;; email
    ("1me" "bwtian@gmail.com")
    ("1ku" "Kyoto Univerisy")
    ;; geothermal
    ("8ga" "geothrmal anomaies")
    ("8tir" "thermal infrared remote sensing")
    ("8rs"  "remote sensing")

    ;; math/unicode symbols
    ("8in" "∈")
    ("8nin" "∉")
    ("8inf" "∞")
    ("8luv" "♥")
    ("8smly" "☺")


    ;; computing tech
    ("8wp" "Wikipedia")
    ("8ms" "Microsoft")
    ("8g" "Google")
    ("8it" "IntelliType")
    ("8msw" "Microsoft Windows")
    ("8win" "Windows")
    ("8ie" "Internet Explorer")
    ("8ahk" "AutoHotkey")

    ;; normal english words
    ("8alt" "alternative")
    ("8char" "character")
    ("8def" "definition")
    ("8bg" "background")
    ("8kb" "keyboard")
    ("8ex" "example")
    ("8kbd" "keybinding")
    ("8env" "environment")
    ("8var" "variable")
    ("8ev" "environment variable")
    ("8cp" "computer")

    ;; signature
    ("8xl" "Xah Lee")

    ;; url
    ("8uxl" "http://xahlee.info/")

    ;; emacs regex
    ("8d" "\\([0-9]+?\\)")
    ("8str" "\\([^\"]+?\\)\"")

    ;; shell commands
    ("8ditto" "ditto -ck --sequesterRsrc --keepParent src dest")
    ("8im" "convert -quality 85% ")

    ("8f0" "find . -type f -size 0 -exec rm {} ';'")
    ("8rsync" "rsync -z -r -v -t --exclude=\"*~\" --exclude=\".DS_Store\" --exclude=\".bash_history\" --exclude=\"**/xx_xahlee_info/*\"  --exclude=\"*/_curves_robert_yates/*.png\" --exclude=\"logs/*\"  --exclude=\"xlogs/*\" --delete --rsh=\"ssh -l xah\" ~/web/ xah@example.com:~/")
    ))
