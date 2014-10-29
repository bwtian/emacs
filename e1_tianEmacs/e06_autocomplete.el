
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
      ac-auto-start nil ; nil ;; t conflict with ESS, complete form fourth character, t=2 
      ac-trigger-key "<C-tab>" ;;ac-auto-start nil + ac-trigger-key "TAB"  "<C-tab>"
      ac-delay 0.1 ;; 0.1 fast for fisrt complete ; tiem setting very import to R   
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
 (setq ac-quick-help-delay 0.1)
 (setq ac-quick-help-use-pos-tip-p t)
; (ac-quick-help-prefer-pos-tip) 
                                         ;(setq ac-setup t)
   ; (setq ac-quick-help-height 25)
   ;(setq ac-quick-help-scroll-down t)

   ;; ac-Popup background colors

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
   (define-key ac-completing-map (kbd "C-c q h") 'ac-quick-help)
   (define-key ac-mode-map (kbd "C-c l q h") 'ac-last-quick-help)
   (define-key ac-mode-map (kbd "C-c l h ") 'ac-last-help)

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
