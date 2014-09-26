
(require 'auto-complete-config nil 'noerror)
(require 'auto-complete-config) 
(global-auto-complete-mode t) ;; ac all mode
;;(global-auto-composition-mode 1)
(ac-config-default)
(ac-flyspell-workaround)    ;; conflict with flyspell

(setq
 ac-delay 0 ;; 0.1 
 ac-auto-start 3 ;; t conflict with ESS, complete form fourth character, t=2 
 ac-trigger-key nil ;;ac-auto-start nil + ac-trigger-key "TAB"


 ac-auto-show-menu 0.1 ;;0.001 ;; nil show menu with 0.05 delay
 ;;ac-show-menu-immediately-on-auto-complete t
 ac-candidate-limit 25 ;; nil
 ac-use-comphist t ;; sort Candidate
 ac-menu-height 25 ;;12 Max height for complete candidate menu

 ac-ignore-case 'smart
 ac-fuzzy-enable t ;; Fuzzy mode
 ac-dwim t    ;; DO What I mean

 ;; ac-use-quick-help nil                   ; no tool tip
 ac-use-quick-help t ;; use quick help
 ac-quick-help-prefer-pos-tip t
 ac-quick-help-delay 0.2 ;;
 ac-quick-help-height 25
 ac-quick-help-scroll-down
 )
(defun ac-quick-help-force ()
   (interactive)
   (ac-quick-help t))


;; ac-Popup background colors
(set-face-attribute 'ac-candidate-face nil   :background "#00222c" :foreground "light gray") ;; pop menu
(set-face-attribute 'ac-selection-face nil   :background "SteelBlue4" :foreground "white") ;; seletced pop menu
(set-face-attribute 'popup-tip-face    nil   :background "LightGoldenrod1"  :foreground "black") ;;pop help

;; Motion
 ;;;ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
(setq ac-use-menu-map t)    ;; Keybinding
(define-key ac-menu-map (kbd "C-n")         'ac-next)
(define-key ac-menu-map (kbd "C-p")         'ac-previous)
(define-key ac-completing-map "\M-n" nil) ;; was ac-next
(define-key ac-completing-map "\M-p" nil) ;; was ac-previous
;;(define-key ac-completing-map (kbd "<tab>") nil)
;;(define-key ac-completing-map (kbd "RET") nil) ; return 
;; (define-key ac-completing-map (kbd "<tab>") 'ac-complete)
(define-key ac-completing-map (kbd "M-/")   'ac-stop)
(define-key ac-completing-map (kbd "M-h") 'ac-quick-help-force)
(define-key ac-mode-map (kbd "M-H") 'ac-last-quick-help)
;; (define-key ac-mode-map (kbd "M-H") 'ac-last-help)

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
