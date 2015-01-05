
(require 'auto-complete-config nil 'noerror)
;(require 'auto-complete-config)  
;(require 'auto-complete)
;;(load "auto-complete") 
(global-auto-complete-mode t) ;; ac all mode
(global-auto-composition-mode 1)
(ac-flyspell-workaround)    ;; conflict with flyspell 
(setq 
      ac-auto-start 2 ; nil ;; t conflict with ESS, complete form fourth character, t=2 
      ac-trigger-key "C-<tab>" ;;ac-auto-start nil + ac-trigger-key "TAB"
      ac-delay 0.1 ;; 0.1 fast for fisrt complete ; tiem setting very import to R   
      ac-auto-show-menu 0.2 ;; nil or ; tiem setting very import to R
      ;;ac-show-menu-immediately-on-auto-complete t
      ac-candidate-limit 10 ;; nil
      ac-use-comphist t ;; sort Candidate
      ac-menu-height 12 ;;12 Max height for complete candidate menu
      ac-ignore-case 'smart
      ac-fuzzy-enable t ;; Fuzzy mode
      ac-dwim t    ;; t DO What I mean nil pop-ups with docs even if a word is uniquely completed
      )

(require 'pos-tip)
 (setq ac-use-quick-help t)
 (setq ac-quick-help-delay 0.1)
 (setq ac-quick-help-use-pos-tip-p t)
; (ac-quick-help-prefer-pos-tip) 
                                         ;(setq ac-setup t)
   (setq ac-quick-help-height 12)
   (setq ac-quick-help-scroll-down t)

   ;; ac-Popup background colors

   (set-face-attribute 'ac-candidate-face nil   :background "#00222c" :foreground "light gray") ;; pop menu
   (set-face-attribute 'ac-selection-face nil   :background "SteelBlue4" :foreground "white") ;; seletced pop menu
   (set-face-attribute 'popup-tip-face    nil   :background "LightGoldenrod1"  :foreground "black") ;;pop help

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
(set-fackek-background 'popup-tip-face word)
(message "%s: %s"
(propertize "Popup color"
'face `(:background ,word))
(propertize (substring-no-properties word)
'face `(:foreground ,word)))
(popup-tip popup-color-string)
(set-face-background 'popup-tip-face bg))))
(global-set-key (kbd "C-c p") 'popup-color-at-point)

(require 'ac-math)
(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources)))
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
(add-to-list 'ac-modes 'latex-mode)
(add-to-list 'ac-modes 'LaTeX-mode)
;; (setq ac-modes
;;       (append ac-modes '(org-mode objc-mode jde-mode sql-mode ess-mode
;;                                   change-log-mode text-mode 
;;                                   makefile-gmake-mode makefile-bsdmake-mo
;;                                   autoconf-mode makefile-automake-mode)))

;; (add-to-list 'ac-dictionary-directories (expand-file-name
   ;;              "~/.emacs.d/elpa/auto-complete-1.4.20110207/dict"))
   ;; (setq ac-comphist-file (expand-file-name
   ;;              "~/.emacs.d/ac-comphist.dat"))
   (setq ac-comphist-file "~/.emacs.d/share/ac-comphist.dat")
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
                ac-source-dabbrev
                ac-source-math-unicode
                ac-source-math-latex
                ac-source-latex-commands
                ac-source-dictionary
                ac-source-look
                ac-source-imenu
                ac-source-features
                ac-source-functions
                ac-source-variables 
                ac-source-symbols
                ac-source-files-in-current-dir
                ac-source-filename))
(ac-config-default) ; make above work.

;; Motion
     ;;;ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
 (setq ac-use-menu-map t)    ;; Keybinding
 (setq ac-trigger-commands
       (cons 'backward-delete-char-untabify ac-trigger-commands))  

 (define-key ac-menu-map (kbd "C-n") 'ac-next)
 (define-key ac-menu-map (kbd "C-p") 'ac-previous)
 ;(define-key ac-menu-map (kbd "j")   'ac-next)
 ;(define-key ac-menu-map (kbd "k")   'ac-previous)
; (define-key ac-menu-map (kbd "l")   'ac-stop)
 (define-key ac-menu-map (kbd "henkan")   'ac-complete)
 ;(define-key ac-menu-map (kbd "SPC") 'ac-stop)
 (define-key ac-completing-map (kbd "C-g")   'ac-stop)
 (define-key ac-completing-map (kbd "M-RET") 'ac-stop)
 (define-key ac-completing-map (kbd "C-RET") 'ac-stop)

                                         ;(define-key ac-completing-map "\M-n" nil) ;; was ac-next

 ;(define-key ac-completing-map "\M-p" nil) ;; was ac-previous
 (define-key ac-completing-map (kbd "<tab>") nil)
 ;;(define-key ac-completing-map (kbd "RET") nil) ; return 
 ;; (define-key ac-completing-map (kbd "<tab>") 'ac-complete)
 ;(define-key ac-completing-map [tab] 'ac-complete)

 (define-key ac-completing-map (kbd "C-c q h") 'ac-quick-help)
 (define-key ac-mode-map (kbd "C-c l q h") 'ac-last-quick-help)
 (define-key ac-mode-map (kbd "C-c l h ") 'ac-last-help)

(require 'company)
 (setq company-idle-delay 3)  ; delay autocompletion popup shows; nil 
 (setq company-minimum-prefix-length 4)

 (setq company-tooltip-delay 3)
 (setq company-echo-delay 0)  ; remove annoying blinking
 (setq company-display-style 'pseudo-tooltip)
 (setq company-tooltip-limit 10)
 (setq company-auto-expand t)
 (setq company-auto-complete t)

 (setq company-show-numbers t)
 (setq company-transformers '(company-sort-by-occurrence))
 (setq company-complete-on-edit t)
 (setq company-begin-commands '(self-insert-command 
                                org-self-insert-command
                                ;c-electric-lt-gt
                                ;c-electric-colon
                                )) ; start autocompletion only after typing

 (add-hook 'after-init-hook 'global-company-mode)

 ;; this will show a lot of garbage, use it only necessary
 (add-to-list 'company-backends 'company-ispell) ; make company work as a dictionary
 (defalias 'ci 'company-ispell)

   ;; put most often used completions at stop of list
; (setq company-backends '(company-dabbrev
                       ; (company-keywords company-dabbrev-code)
                       ; company-files))
   (setq company-dabbrev-time-limit 0.1)
   (setq company-dabbrev-downcase nil)
   (setq company-dabbrev-ignore-case nil)
   (setq company-dabbrev-other-buffers t)  
 ;  (setq company-dabbrev-minimum-length 2)
