
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

(require 'auto-complete-config nil 'noerror)
;(require 'auto-complete-config)  
;(require 'auto-complete)
;;(load "auto-complete") 
(global-auto-complete-mode t) ;; ac all mode
(global-auto-composition-mode 1)
(ac-flyspell-workaround)    ;; conflict with flyspell 
(setq 
      ac-auto-start nil ;; t conflict with ESS, complete form fourth character, t=2 
      ac-trigger-key  "<C-tab>" ;;ac-auto-start nil + ac-trigger-key "TAB"  "<C-tab>"
      ;;ac-delay 0.2 ;; 0.1 fast for fisrt complete ; tiem setting very import to R   
      ac-auto-show-menu 0.2 ;; nil or ; tiem setting very import to R

      ;;ac-show-menu-immediately-on-auto-complete t
      ;; ac-candidate-limit 25 ;; nil
      ac-use-comphist t ;; sort Candidate
      ac-menu-height 20 ;;12 Max height for complete candidate menu
      ac-ignore-case 'smart
      ac-fuzzy-enable t ;; Fuzzy mode
      ;ac-dwim nil    ;; t DO What I mean nil pop-ups with docs even if a word is uniquely completed
      )

(require 'pos-tip)
  (setq ac-use-quick-help t)
        ac-quick-help-delay 0.2 ;;     
;(setq ac-setup t)
  ; (setq ac-quick-help-height 25)
  ; (setq ac-quick-help-scroll-down t)

  ;; ac-Popup background colors
  (setq ac-quick-help-prefer-pos-tip t) 
  (set-face-attribute 'ac-candidate-face nil   :background "#00222c" :foreground "light gray") ;; pop menu
  (set-face-attribute 'ac-selection-face nil   :background "SteelBlue4" :foreground "white") ;; seletced pop menu
  (set-face-attribute 'popup-tip-face    nil   :background "LightGoldenrod1"  :foreground "black") ;;pop help

  ;; Motion
      ;;;ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
  (setq ac-use-menu-map t)    ;; Keybinding
  (setq ac-trigger-commands
        (cons 'backward-delete-char-untabify ac-trigger-commands))  
  (define-key ac-menu-map (kbd "C-n")         'ac-next)
  (define-key ac-menu-map (kbd "C-p")         'ac-previous)
  (define-key ac-completing-map "\M-n" nil) ;; was ac-next
  (define-key ac-completing-map "\M-p" nil) ;; was ac-previous
  ;;(define-key ac-completing-map (kbd "<tab>") nil)
  ;;(define-key ac-completing-map (kbd "RET") nil) ; return 
  ;; (define-key ac-completing-map (kbd "<tab>") 'ac-complete)
  ;(define-key ac-completing-map [tab] 'ac-complete)
  ;(define-key ac-completing-map [return] nil)
  (define-key ac-completing-map (kbd "M-/")   'ac-stop)
  (define-key ac-completing-map (kbd "M-H") 'ac-quick-help)
  (define-key ac-mode-map (kbd "C-M-H") 'ac-last-quick-help)
  (define-key ac-mode-map (kbd "C-H") 'ac-last-help)

;; ----------------------------------------------------------------
;; 0.2.0 Popup and Show color of "Colorword or Hex code" with C-c p
;; ----------------------------------------------------------------
(require 'cl)
(require 'popup)
(defvar popup-color-string
(let ((x 9) (y 3))
(mapconcat 'identity
(loop with str = (make-string x ?\ ) repeat y collect str)
"\n"))
"*String displayed in tooltip.")
(defun popup-color-at-point ()
"Popup color specified by word at point."
(interactive)
(let ((word (word-at-point))
(bg (plist-get (face-attr-construct 'popup-tip-face) :background)))
(when word
(unless (member (downcase word) (mapcar #'downcase (defined-colors)))
(setq word (concat "#" word)))
(set-face-background 'popup-tip-face word)
(message "%s: %s"
(propertize "Popup color"
'face `(:background ,word))
(propertize (substring-no-properties word)
'face `(:foreground ,word)))
(popup-tip popup-color-string)
(set-face-background 'popup-tip-face bg))))
(global-set-key (kbd "C-c p") 'popup-color-at-point)

(require 'ac-math)
(add-to-list 'ac-modes 'latex-mode)  
(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources)))
(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources))
)
(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)
(setq ac-math-unicode-in-math-p t) ;;use unicode input

(when (executable-find "look")
  (defun my-ac-look ()
    "list of look command output"
    (interactive)
    (unless (executable-find "look")
      (error "This is no look command"))
    (let ((search-word (thing-at-point 'word)))
      (with-temp-buffer
        (call-process-shell-command "look" nil t 0 search-word)
        (split-string-and-unquote (buffer-string) "\n"))))

  (defun ac-complete-look ()
    (interactive)
    (let ((ac-menu-height 50)
          (ac-candidate-limit t))
      (auto-complete '(ac-source-look))))

  (defvar ac-source-look
    '((candidates . my-ac-look)
      (requires . 2)))  

(global-set-key (kbd "M-h") 'ac-complete-look))
(push 'ac-source-look ac-sources)

(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'text-mode)
(add-to-list 'ac-modes 'tex-mode)
(add-to-list 'ac-modes 'ess-mode)
(add-to-list 'ac-modes 'R-mode)
(add-to-list 'ac-modes 'graphviz-mode)

;; (setq ac-modes
;;       (append ac-modes '(org-mode objc-mode jde-mode sql-mode ess-mode
;;                                   change-log-mode text-mode 
;;                                   makefile-gmake-mode makefile-bsdmake-mo
;;                                   autoconf-mode makefile-automake-mode)))

;; (add-to-list 'ac-dictionary-directories (expand-file-name
   ;;              "~/.emacs.d/elpa/auto-complete-1.4.20110207/dict"))
   ;; (setq ac-comphist-file (expand-file-name
   ;;              "~/.emacs.d/ac-comphist.dat"))
   (setq ac-comphist-file "~/SparkleShare/emacs.d/ac-comphist.dat")
   (setq ac-use-comphist t) 
   (set-default 'ac-sources
              '(ac-source-semantic 
                ac-source-R
                ac-source-R-args
                ac-source-R-objects
                ac-source-rcodetools
                ac-source-yasnippet
                ac-source-words-in-buffer
                ac-source-words-in-all-buffer
                ;ac-source-css-property
                ac-source-abbrev      
                ac-source-math-unicode
                ac-source-math-latex
                ac-source-latex-commands
                ;ac-source-dictionary
                ac-source-look
                ac-source-imenu
                ac-source-features
                ac-source-functions
                ac-source-variables 
                ac-source-symbols
                ac-source-files-in-current-dir
                ac-source-filename))
(ac-config-default) ; make above work.

(require 'company)
 (setq company-idle-delay 0)                         ; decrease delay before autocompletion popup shows
 (setq company-echo-delay 0)                          ; remove annoying blinking
 (setq company-tooltip-limit 20)
 (setq company-minimum-prefix-length 1)
 (setq company-show-numbers t)
 (setq company-transformers '(company-sort-by-occurrence))
 (setq company-auto-complete t)
 (add-hook 'after-init-hook 'global-company-mode)
 ;; use F1 or C-h in the drop list to show the doc, Use C-s/C-M-s to search the candidates,
 ;; M-NUM to select specific one, C-w to view its source file
  ;; this will show a lot of garbage, use it only necessary
 ;(add-to-list 'company-backends 'company-ispell) ; make company work as a dictionary
 ;(defalias 'ci 'company-ispell)
;(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing
   ;; put most often used completions at stop of list
   (setq company-dabbrev-downcase nil)
   (setq company-dabbrev-ignore-case nil)
   (setq company-dabbrev-other-buffers t)  

    ;; (eval-after-load 'company
         ;;   '(progn
         ;;      (define-key company-mode-map (kbd "<S-tab>") 'company-complete)))
         ;; invert the navigation direction if the the completion popup-isearch-match
         ;; is displayed on top (happens near the bottom of windows)
   (setq company-tooltip-flip-when-above t)

(eval-after-load "company"
  '(progn
     (custom-set-faces
      '(company-preview
        ((t (:foreground "darkgray" :underline t))))
      '(company-preview-common
        ((t (:inherit company-preview))))
      '(company-tooltip
        ((t (:background "lightgray" :foreground "black"))))
      '(company-tooltip-selection
        ((t (:background "steelblue" :foreground "white"))))
      '(company-tooltip-common
        ((((type x)) (:inherit company-tooltip :weight bold))
         (t (:inherit company-tooltip))))
      '(company-tooltip-common-selection
        ((((type x)) (:inherit company-tooltip-selection :weight bold))
         (t (:inherit company-tooltip-selection)))))
     (define-key company-active-map "\C-q" 'company-search-candidates)
     (define-key company-active-map "\C-e" 'company-filter-candidates)
     ))

;;; WIP, somewhat usable
(require 'company)
(require 'pos-tip)
 
(defun company-quickhelp-frontend (command)
  "`company-mode' front-end showing documentation in a
  `pos-tip' popup."
  (pcase command
    (`post-command (company-quickhelp--set-timer))
    (`hide
     (company-quickhelp--cancel-timer)
     (pos-tip-hide))))
 
(defun company-quickhelp--show ()
  (company-quickhelp--cancel-timer)
  (let* ((selected (nth company-selection company-candidates))
         (doc-buffer (company-call-backend 'doc-buffer selected))
         (ovl company-pseudo-tooltip-overlay))
    (when (and ovl doc-buffer)
      (with-no-warnings
        (let* ((width (overlay-get ovl 'company-width))
               (col (overlay-get ovl 'company-column))
               (extra (- (+ width col) (company--window-width))))
          (pos-tip-show (with-current-buffer doc-buffer (buffer-string))
                        nil
                        nil
                        nil
                        300
                        80
                        nil
                        (* (frame-char-width)
                           (- width (length company-prefix)
                              (if (< 0 extra) extra 1)))))))))
 
(defvar company-quickhelp--timer nil
  "Quickhelp idle timer.")
 
(defcustom company-quickhelp--delay 0.5
  "Delay, in seconds, before the quickhelp popup appears.")
 
(defun company-quickhelp--set-timer ()
  (when (null company-quickhelp--timer)
    (setq company-quickhelp--timer
          (run-with-idle-timer company-quickhelp--delay nil
                               'company-quickhelp--show))))
 
(defun company-quickhelp--cancel-timer ()
  (when (timerp company-quickhelp--timer)
    (cancel-timer company-quickhelp--timer)
    (setq company-quickhelp--timer nil)))
 
;;;###autoload
(define-minor-mode company-quickhelp-mode
  "Provides documentation popups for `company-mode' using `pos-tip'."
  :global t
  (if company-quickhelp-mode
      (push 'company-quickhelp-frontend company-frontends)
    (setq company-frontends
          (delq 'company-quickhelp-frontend company-frontends))
    (company-quickhelp--cancel-timer)))
 
(provide 'company-quickhelp)
(require 'company-quickhelp)

(dolist (hook (list
               'emacs-lisp-mode-hook
               'lisp-mode-hook
               'lisp-interaction-mode-hook
               'scheme-mode-hook
               'c-mode-common-hook
               'python-mode-hook
               'haskell-mode-hook
               'asm-mode-hook
               'org-mode-hook
             ;  'text-mode-hook
               'emms-tag-editor-mode-hook
               'sh-mode-hook))
  (add-hook hook 'company-mode))

(add-hook 'org-mode-hook
                  (lambda ()
                        (company-mode)
                        (set (make-local-variable 'company-backends)
                                 '((
                                        company-dabbrev
                                        company-dabbrev-code
                                        company-ispell
                                        company-files
                                        company-yasnippet
                                        ))
                                 )))

(require 'company-auctex)
(company-auctex-init)
(require 'auto-complete-auctex)

(define-key company-mode-map "\t" nil)
(define-key company-mode-map [(backtab)] 'company-complete-common)     
;(global-set-key [(control tab)] 'company-complete-common)
;; default keybinding is in company.el
(define-key company-active-map "\e\e\e" 'company-abort)
(define-key company-active-map (kbd "l") 'company-abort)
(define-key company-active-map (kbd "j") 'company-select-next)
(define-key company-active-map (kbd "k") 'company-select-previous)
;;(define-key company-active-map (kbd "<down>") 'company-select-next)
;;(define-key company-active-map (kbd "<up>") 'company-select-previous)
;;(define-key company-active-map [down-mouse-1] 'ignore)
;;(define-key company-active-map [down-mouse-3] 'ignore)

(define-key company-active-map [mouse-1] 'company-complete-mouse)
(define-key company-active-map [mouse-3] 'company-select-mouse)
(define-key company-active-map [up-mouse-1] 'ignore)
(define-key company-active-map [up-mouse-3] 'ignore)

(define-key company-active-map "" 'company-complete-selection)
(define-key company-active-map "" 'company-complete)
(define-key company-active-map "\t" 'company-complete)

(define-key company-active-map (kbd "<home>") 'company-show-doc-buffer)
;(define-key company-active-map "\C-w" 'company-show-location)
(define-key company-active-map "\C-s" 'company-search-candidates)
(define-key company-active-map "\C-\M-s" 'company-filter-candidates)

(require 'yasnippet)
;;(yas/initialize)
(yas/global-mode 1)

;;(require 'auto-complete-yasnippet)
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt
yas/ido-prompt
yas/completing-prompt))
(defun ac-yasnippet-candidate ()
  (let ((table (yas/get-snippet-tables major-mode)))
    (if table
      (let (candidates (list))
            (mapcar (lambda (mode)          
              (maphash (lambda (key value)    
                (push key candidates))          
              (yas/snippet-table-hash mode))) 
            table)
        (all-completions ac-prefix candidates)))))


(defvar ac-source-yasnippet
  '((candidates . ac-yasnippet-candidate)
    (action . yas/expand)
    (candidate-face . ac-candidate-face)
    (selection-face . ac-selection-face)
    ;(candidate-face . ac-yasnippet-candidate-face)
    ;(selection-face . ac-yasnippet-selection-face)
) 
  "Source for Yasnippet.")
(provide 'auto-complete-yasnippet)

(add-hook 'org-mode-hook
              (lambda ()
              ;; yasnippet
              (make-variable-buffer-local 'yas/trigger-key)
              (setq yas/trigger-key [tab])
              (define-key yas/keymap [tab] 'yas/next-field-group)
              ;; flyspell mode to spell check everywhere
              (flyspell-mode 1)))

(require 'r-autoyas)
(add-hook 'ess-mode-hook 'r-autoyas-ess-activate)

;;; company-ESS.el --- R Completion Backend for Company-mode  -*- lexical-binding: t; -*-

;; Copyright (C) 2014  

;; Author:  <Lompik@ORION>
;; Keywords: extensions, matching

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:



(require 'cl-lib)
(require 'company)
(require 'ess)


(defun ess-R-my-get-rcompletions (symb)
  "Call R internal completion utilities (rcomp) for possible completions.
"
  (let* (
         
         ;; (opts1 (if no-args "op<-rc.options(args=FALSE)" ""))
         ;; (opts2 (if no-args "rc.options(op)" ""))
         (comm (format ".ess_get_completions(\"%s\", %d)\n"
                       (ess-quote-special-chars symb)
                       (length symb))))
    (ess-get-words-from-vector comm)))

(defun ess-company-args (symb)
  "Get the args of the function when inside parentheses."
  (when  ess--funname.start ;; stored by a coll to ess-ac-start-args
    (let ((args (nth 2 (ess-function-arguments (car ess--funname.start))))
          (len (length symb)))    
      (delete "..." args)
      (mapcar (lambda (a) (concat a ess-ac-R-argument-suffix))
              args))))


(defun ess-company-candidates ( symb)
  (let ((args (ess-company-args symb))
        (comps (cdr (ess-R-my-get-rcompletions symb))))
    
    (if args
        (setq comps (append
                     (delq nil (mapcar (lambda (x)
                                         (if (string-match symb x)
                                             x)) args))
                     comps)))
    comps))

(defun ess-company-start-args () ;SAme as ess-ac-start-args
  "Get initial position for args completion"
  (when (and ess-local-process-name
             (not (eq (get-text-property (point) 'face) 'font-lock-string-face)))
    (when (ess--funname.start)
      (if (looking-back "[(,]+[ \t\n]*")
          (point)
        (ess-symbol-start)))))


(defun ess-company-start ()
  (when (and ess-local-process-name
             (get-process ess-local-process-name))
                                        ;(buffer-substring-no-properties (ess-ac-start) (point))
    (let ((start (or (ess-company-start-args)  (ess-symbol-start))))
      (when start
        (buffer-substring-no-properties start (point))))))

                                        ;(company-grab-symbol)

(defun ess-R-get-typeof (symb)
  "Call R internal completion utilities (typeof) for possible completions.
"
  (let* ( ;; (opts1 (if no-args "op<-rc.options(args=FALSE)" ""))
         ;; (opts2 (if no-args "rc.options(op)" ""))
         (comm (format "typeof(%s)\n"
                       symb)))
    (format " %.3s" (car (ess-get-words-from-vector comm)))))

(defun ess-company-create-doc-buffer (syms)
  (let ((doc (ess-ac-help syms)))
    (company-doc-buffer doc)))


(defun company-ess-backend (command &optional arg &rest ignored)
  (interactive (list 'interactive))

  (cl-case command
    (interactive (company-begin-backend 'company-ess-backend))
    (prefix (ess-company-start))
    (candidates (ess-company-candidates arg))
    (doc-buffer (ess-company-create-doc-buffer arg))
    ;(meta (funcall ess-eldoc-function) )
    ;(annotation (ess-R-get-typeof arg))
    (sorted t) ; get arguments on top of the list
    (duplicates nil)
    ))

;(add-hook 'ess-mode-hook (lambda ()
;                          (set (make-local-variable 'company-backends) '(company-ess))
;                          (company-mode)))

(add-to-list 'company-backends 'company-ess-backend)

;(remove-hook 'completion-at-point-functions 'ess-R-object-completion) 
; FIXME: Is this required ?


(provide 'company-ess)
;;; company-ESS.el ends here
(require 'company-ess)
