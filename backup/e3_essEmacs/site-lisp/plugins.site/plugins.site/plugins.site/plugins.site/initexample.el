My init.el for ESS etc

;;
;; ~/.emacs.d/init.el for cocoa emacs 24.1 (source with inline patch) on Mac OS X 10.8.2
;; Reference: http://sakito.jp/emacs/emacs24.html#ime
;;

;; Additional load-paths
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c/")     ; yasnippet
(add-to-list 'load-path "~/.emacs.d/auto-install/")         ; auto-install Book by rubikitch p49
;;
;;  For ess installed with DESTDIR=/usr/local
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/ess/")

;; Configuration without external .el file dependencies comes first


;; default.el in Vincent Goulet's distribution
;; https://svn.fsg.ulaval.ca/svn-pub/vgoulet/emacs-modified/macos/tags/Emacs-23.3-modified-3/default.el
;;
;;; Nice options to have On by default
(mouse-wheel-mode t)                ; activate mouse scrolling
(global-font-lock-mode t)           ; syntax highlighting
(transient-mark-mode t)             ; sane select (mark) mode
(delete-selection-mode t)           ; entry deletes marked text
(show-paren-mode t)             ; match parentheses
(add-hook 'text-mode-hook 'turn-on-auto-fill)   ; wrap long lines in text mode


;; Suppress all dialog box completely, even file open dialogue. No need for mouse!
;; http://www.gnu.org/s/libtool/manual/emacs/Dialog-Boxes.html
(setq use-dialog-box nil)


;; Use system trash
;; http://www.masteringemacs.org/articles/2010/12/30/making-deleted-files-trash-can/
;; http://www.reddit.com/r/emacs/comments/iuyef/emacs_on_mac/
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")


;; Bars: Menu bar & scroll bar only
;; http://www.emacswiki.org/emacs/FullScreen#toc7
(menu-bar-mode t)
(tool-bar-mode -1)
(scroll-bar-mode t)


;; winner-mode                      ; Git does not mess with windows
;; http://www.emacswiki.org/emacs/WinnerMode
;; Default: C-c <left> to undo window rearragement. C-c <right> to redo.
;; (winner-mode t)
;; (global-set-key (kbd "M-<left>") 'winner-undo)       ; M-<left>  to undo
;; (global-set-key (kbd "M-<right>") 'winner-redo)      ; M-<right> to redo


;; Unique buffer names
;; rubikitch book p84
;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Uniquify.html
(require 'uniquify)
;; (setq uniquify-buffer-name-style 'post-forward-angle-brackets)   ; rubikitch
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-ignore-buffers-re "*[^*]+*")


;; Scroll window with C-t/C-v
;; transpose-char changed to cua-scroll-down
(global-set-key (kbd "C-t") 'cua-scroll-down)   ; C-t to scroll down, C-v to scroll up
;;
;; Scroll just one line when hitting bottom of window
;; http://www.emacswiki.org/emacs/SmoothScrolling
(setq scroll-conservatively 10000)
;;
;; Scroll one line at a time (less "jumpy" than defaults)
;; http://www.emacswiki.org/emacs/SmoothScrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
;;(setq mouse-wheel-progressive-speed nil)      ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't)          ; scroll window under mouse
;;(setq scroll-step 1)                  ; keyboard scroll one line at a time
;;
;; Scroll other window with M-up/M-down         ; Conflict with paredit. Use C-M-(S)-v
;; http://www.google.com/url?sa=t&rct=j&q=%22scroll-other-window-down%22%20emacs&source=web&cd=4&ved=0CDUQFjAD&url=http%3A%2F%2Fgroups.google.com%2Fgroup%2Fgnu.emacs.help%2Fbrowse_thread%2Fthread%2F882ee9efd4bb7a0d&ei=8EHiToXXL-TsmAXipOzwBA&usg=AFQjCNHooX_TWN8NBUsOFbk8S1H9aQhwag&sig2=9AO2_BzBJbT8k6shAPJYag
(global-set-key [M-up] 'scroll-other-window-down)
(global-set-key [M-down] 'scroll-other-window)


;; History retained between sessions
;; Book by rubikitch p59
;; http://www.emacswiki.org/emacs/SaveHist
(savehist-mode 1)
;; saveplace
;; Remeber the cursor position in a file
;; http://www.emacswiki.org/emacs/SavePlace
;; http://git.sysphere.org/dotfiles/tree/emacs
(setq save-place-file "~/.emacs.d/emacs-places")        ; save file within ~/.emacs.d
(setq-default save-place t)
(require 'saveplace)
;; y or n for yes or no
(defalias 'yes-or-no-p 'y-or-n-p)


;; Auto-saving #file.txt#
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Auto_002dSaving.html
;; (setq auto-save-interval 20) ; auto-save after every 20 characters   ; Turned off now auto-save-buffers
;; (setq auto-save-timeout 5)   ; auto-save if idle for 5 seconds   ; in use, instead of auto-backup


;; Get file path or URL from current line
;; http://www.gnu.org/s/libtool/manual/emacs/FFAP.html
(ffap-bindings)


;; Bookmarking
;; http://www.emacswiki.org/emacs/BookMarks#toc6
(setq bookmark-save-flag 1)
(setq bookmark-default-file "~/.emacs.d/bookmarks")     ; save file within ~/.emacs.d
(defadvice bookmark-jump (after bookmark-jump activate)
  (let ((latest (bookmark-get-bookmark bookmark)))
    (setq bookmark-alist (delq latest bookmark-alist))
    (add-to-list 'bookmark-alist latest)))


;; Keyboard modification
;;
;; C-h for delete, C-? for help
;; http://www.emacswiki.org/emacs-en/BackspaceKey
(keyboard-translate ?\C-h ?\C-?)
;; (global-set-key [(control h)] 'delete-backward-char)
;; (global-set-key [(control ?)] 'help-command)
;;
;; Command key as Meta key
;; http://www.emacswiki.org/emacs/MetaKeyProblems#toc15
;; (setq mac-option-key-is-meta nil)    ; option key is also meta if commented out
;; (setq mac-option-modifier nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
;; (setq mac-option-modifier 'super) ; This may be useful
;;
;; http://www.emacswiki.org/emacs/AquamacsFAQ
;; (setq mac-option-modifier 'meta) - Sets the option key as Meta (this is default)
;; (setq mac-command-modifier 'meta)    - Sets the command (Apple) key as Meta
;; (setq mac-control-modifier 'meta)    - Sets the control key as Meta
;; (setq mac-function-modifier 'meta)   - Sets the function key as Meta (limitations on non-English keyboards)


;; Added automatically by emacs
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


;; Common User Access mode for column editing: Activated by C-RET while selecting text
;; http://tech.kayac.com/archive/emacs-rectangle.html
;; http://trey-jackson.blogspot.com/2008/10/emacs-tip-26-cua-mode-specifically.html
(cua-mode t)
(setq cua-enable-cua-keys nil)          ; C-x C-c C-v left intact


;; No auto filling in text mode
;; http://tomikura.s2.xrea.com/linux/install/emacs.html
(setq fill-column 80)
(setq text-mode-hook '(lambda () (auto-fill-mode 0)))
(setq default-major-mode 'text-mode)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;; Language settings
;;
;; Unicode use
;; http://d.hatena.ne.jp/syou6162/20080519/1211133695
(set-locale-environment "utf-8")
(setenv "LANG" "en_US.UTF-8")
;; (setenv "LANG" "ja_JP.UTF-8")
;; http://www.emacswiki.org/emacs/EmacsForMacOS#toc18
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;
;; Japanese font setting that works
;; http://sakito.jp/emacs/emacs23.html#id17
;; Method 1 for Japanese fonts  ; This works with ESS(R). Fixed width ok with rescaling. Greek goes bad.
;; Method 2 for Japanese fonts  ; This works with ESS(R). Fixed width breaks with rescaling.
;;
;; Cocoa Emacs Font Settings    ; Best one so far. Good rescaling, and working with Greek letters φ phi
;; http://d.hatena.ne.jp/setoryohei/20110117
;; Method 1         ; This works with ESS(R). Fixed width ok with rescaling. Greek φ(phi) works.
;; default-frame font configured
;; New font set made, it is then chosen as default-frame-alist font.
;; Fontset made with crease-fontse-from-ascii-font
;; Font selected by family name, font-spec object made.
;;
;; Fontset made
(let* ((fontset-name "myfonts")             ; Fontset name
       (size 14)                    ; Font size one of [9/10/12/14/15/17/19/20/...]
       (asciifont "Menlo")              ; ascii font
       (jpfont "Hiragino Maru Gothic ProN")     ; Japanese font
       (font (format "%s-%d:weight=normal:slant=normal" asciifont size))
       (fontspec (font-spec :family asciifont))
       (jp-fontspec (font-spec :family jpfont))
       (fsn (create-fontset-from-ascii-font font nil fontset-name)))
  (set-fontset-font fsn 'japanese-jisx0213.2004-1 jp-fontspec)
  (set-fontset-font fsn 'japanese-jisx0213-2 jp-fontspec)
  (set-fontset-font fsn 'katakana-jisx0201 jp-fontspec) ; Half-sized katakana
  (set-fontset-font fsn '(#x0080 . #x024F) fontspec)    ; Latin with pronounciation marks (as in German)
  (set-fontset-font fsn '(#x0370 . #x03FF) fontspec)    ; Greek
  )
;; Fontset for default-frame
(add-to-list 'default-frame-alist '(font . "fontset-myfonts"))
;; Relative size of different fonts
(dolist (elt '(("^-apple-hiragino.*" . 1.2)
           (".*osaka-bold.*" . 1.2)
           (".*osaka-medium.*" . 1.2)
           (".*courier-bold-.*-mac-roman" . 1.0)
           (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
           (".*monaco-bold-.*-mac-roman" . 0.9)))
  (add-to-list 'face-font-rescale-alist elt))
;; Fontset configured to default face. Fixes default-frame-alist being ignored at startup.
(set-face-font 'default "fontset-myfonts")
;;
;; ;; Method 2              ;; Not tested yet. Same configuration with a different method.
;; ;; Font set for frame
;; (let* ((size 14)
;;        (asciifont "Menlo")
;;        (jpfont "Hiragino Maru Gothic ProN")
;;        (h (* size 10))
;;        (fontspec (font-spec :family asciifont))
;;        (jp-fontspec (font-spec :family jpfont)))
;;   (set-face-attribute 'default nil :family asciifont :height h)
;;   (set-fontset-font nil 'japanese-jisx0213.2004-1 jp-fontspec)
;;   (set-fontset-font nil 'japanese-jisx0213-2 jp-fontspec)
;;   (set-fontset-font nil 'katakana-jisx0201 jp-fontspec)
;;   (set-fontset-font nil '(#x0080 . #x024F) fontspec)
;;   (set-fontset-font nil '(#x0370 . #x03FF) fontspec)
;;   )
;; ;;
;; (dolist (elt '(("^-apple-hiragino.*" . 1.2)
;;         (".*osaka-bold.*" . 1.2)
;;         (".*osaka-medium.*" . 1.2)
;;         (".*courier-bold-.*-mac-roman" . 1.0)
;;         (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;;         (".*monaco-bold-.*-mac-roman" . 0.9)))
;;   (add-to-list 'face-font-rescale-alist elt))


;; External dependencies starting here.


;; Change to English in minibuffer (require inline patch)
;; http://molekun.blogspot.com/2011/03/homebrewemacs233.html
(add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)


;; Auto-completion
;;
;; auto-complete.el, auto-complete-config.el, fuzzy.el, popup.el downloaded from below URL
;; https://github.com/auto-complete/auto-complete
;; (require 'popup)             ; 0.5 https://github.com/auto-complete/popup-el (called auto)
(require 'auto-complete)            ; 1.4 latest as of 2012-10-07
(require 'auto-complete-config)         ; 1.4 latest as of 2012-10-07
(global-auto-complete-mode t)
;;
;; Dirty fix for having AC everywhere       ; Turned off
;; http://www.emacswiki.org/emacs/AutoComplete
;; (define-globalized-minor-mode real-global-auto-complete-mode
;;   auto-complete-mode (lambda ()
;;                        (if (not (minibufferp (current-buffer)))
;;             (auto-complete-mode 1))
;;                        ))
;; (real-global-auto-complete-mode t)
;;
;; Auto-completion for R                ; Turned on by dirty fix
;; http://www.okada.jp.org/RWiki/?ESS#wc001989
;; http://sheephead.homelinux.org/2009/10/19/1652/  ; New version automatically collect terms
;; https://github.com/myuhe/auto-complete-acr.el
;; (require 'auto-complete-acr)             ; OFF. Conflict with ESS 12.09's auto-complete
;;
;; ;; YAsnippet ; Automatic template inserting system.
;; ;; https://github.com/capitaomorte/yasnippet
;; ;; Download and install the latest version under ~/.emacs.d/plugins/
;; ;; M-x install-elisp-from-emacswiki RET yasnippet-config.el RET
;; ;; (add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c")    ; Present at the top
;; (require 'yasnippet) ;; not yasnippet-bundle
;; (require 'yasnippet-config)  ;; Book by rubikitch p127
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")
;; (require 'auto-complete-yasnippet)
;; ;;
;; ;; ESSAuto-complete                      ; Added 2012-10-07 with ess 12.09. Not working?
;; ;; http://www.emacswiki.org/emacs/ESSAuto-complete
;; ;; http://cx4a.org/software/auto-complete/manual.html#Configuration (auto-complete manual)
;; ;;(define-key ac-completing-map (kbd "M-h") 'ac-quick-help)
;; ;;(define-key ac-completing-map "\r" nil)            ; turns off choosing by return key
;; ;;(define-key ac-completing-map "\t" 'ac-complete)       ; tab key as decide key


;;; ESS for emacs
;;
;; default.el in Vincent Goulet's distribution
;; https://svn.fsg.ulaval.ca/svn-pub/vgoulet/emacs-modified/macos/tags/Emacs-23.3-modified-3/default.el
;; Load ESS and activate the nifty feature showing function arguments
;; in the minibuffer until the call is closed with ')'.
(require 'ess-site)
(require 'ess-eldoc)            ; Slows cursor movements slightly?
;; Following the "source is real" philosophy put forward by ESS, one
;; should not need the command history and should not save the
;; workspace at the end of an R session. Hence, both options are
;; disabled here.
(setq-default inferior-R-args "--no-restore-history --no-save ")
;;
;; Set code indentation following the standard in R sources.
;; http://ess.r-project.org/Manual/ess.html#Indenting
;; https://svn.r-project.org/ESS/trunk/lisp/ess-custom.el
;; ESS provides: DEFAULT, OWN, GNU, BSD, K&R, C++, RRR, CLB.
;;                                 DEF GNU BSD K&R C++ RRR CLB
;; ess-indent-level                  2   2   8   5   4   4   2
;; ess-continued-statement-offset    2   2   8   5   4   4   4
;; ess-brace-offset                  0   0  -8  -5  -4   0   0
;; ess-arg-function-offset           2   4   0   0   0   4   0
;; ess-expression-offset             4   2   8   5   4   4   4
;; ess-else-offset                   0   0   0   0   0   0   0
;; ess-close-brace-offset            0   0   0   0   0   0   2
;;(setq ess-default-style 'C++) ; Vincent's recommendation
(setq ess-default-style 'RRR)   ; Common R chosen
;;
;; Automagically delete trailing whitespace when saving R script
;; files. One can add other commands in the ess-mode-hook below.
;; (add-hook 'ess-mode-hook                     ; Turned off 2012-10-20
;;    '(lambda()
;;       (add-hook 'write-file-functions
;;             (lambda ()
;;                          (ess-nuke-trailing-whitespace)))
;;       (setq ess-nuke-trailing-whitespace-p t)))
;;
;; Key assignment for delete trailing whitespace            ; M-p to nuke trailing whitespace
(add-hook 'ess-mode-hook (setq ess-nuke-trailing-whitespace-p t))
(define-key ess-mode-map (kbd "M-p") 'ess-nuke-trailing-whitespace)
;;
;; Underscore preservation in ESS
;; http://www.r-bloggers.com/a-small-customization-of-ess/
(setq ess-S-assign-key (kbd "C-="))
(ess-toggle-S-assign-key t)     ; enable above key definition
;; leave my underscore key alone!
(ess-toggle-underscore nil)
;;
;; Smart TAB completion in R and S scripts, similarly to iESS behavior. ; Since 12.04
(setq ess-tab-complete-in-script t)
(setq ess-first-tab-never-complete t)
;; http://ergoemacs.org/emacs/reclaim_keybindings.html
;; (define-key ess-mode-map (kbd "<tab>")     'ess-complete-object-name)
;; (define-key ess-mode-map (kbd "<backtab>") 'comint-dynamic-complete-filename)    ; This does not work.
;;
;; Must-haves for ESS
;; http://www.emacswiki.org/emacs/CategoryESS
;; (setq ess-eval-visibly-p t)      ; slow
(setq ess-eval-visibly-p nil)   ; fast
;; Otherwise C-c C-r (eval region) takes forever
;; It causes commands to be invisible, and leaves junk like + + + > > >
;; Fix http://old.nabble.com/cat-a-%22%5Cn%22-when-ess-eval-visibly-p-is-nil--td32684429.html
(setq ess-ask-for-ess-directory nil)
;;  otherwise you are prompted each time you start an interactive R session
;;
;; (require 'ess-eldoc) ;; to show function arguments while you are typing them ;; Vincent's default.el
;;
;; Auto-scrolling of R console to bottom and Shift key extension
;; http://www.kieranhealy.org/blog/archives/2009/10/12/make-shift-enter-do-a-lot-in-ess/
;; Adapted with one minor change from Felipe Salazar at
;; http://www.emacswiki.org/emacs/EmacsSpeaksStatistics
;; (setq ess-ask-for-ess-directory nil)         ; Stated above
(setq ess-local-process-name "R")
(setq ansi-color-for-comint-mode 'filter)
(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)
;;
(defun my-ess-start-R ()
  (interactive)
  (if (not (member "*R*" (mapcar (function buffer-name) (buffer-list))))
      (progn
        (delete-other-windows)
        (setq w1 (selected-window))
        (setq w1name (buffer-name))
        (setq w2 (split-window w1 nil t))
        (R)
        (set-window-buffer w1 "*R*")    ; R on the left
        (set-window-buffer w2 w1name))))
;;        (set-window-buffer w2 "*R*")
;;        (set-window-buffer w1 w1name))))
(defun my-ess-eval ()
  (interactive)
  (my-ess-start-R)
  (if (and transient-mark-mode mark-active)
      (call-interactively 'ess-eval-region)
    (call-interactively 'ess-eval-line-and-step)))
;;
(add-hook 'ess-mode-hook
          '(lambda()
             (local-set-key [(shift return)] 'my-ess-eval)))
(add-hook 'inferior-ess-mode-hook
          '(lambda()
             (local-set-key [C-up] 'comint-previous-input)
             (local-set-key [C-down] 'comint-next-input)))
(add-hook 'Rnw-mode-hook
          '(lambda()
             (local-set-key [(shift return)] 'my-ess-eval)))
;; (require 'ess-site) ;; This is present in the top.
;;
;; ess-R-object-popup.el
;; Replacing R Object Tooltips in ESS (http://www.sigmafield.org/2009/10/01/r-object-tooltips-in-ess/)
;; http://sheephead.homelinux.org/2010/03/02/1807/  ; Official
;; https://gist.github.com/318365           ; git
(require 'ess-R-object-popup)           ; Not compatible with ess 12.09? No ESS process error
;;
;; Automatically close brackets and parentheses
;; http://www.emacswiki.org/emacs/EmacsSpeaksStatistics#toc5
;; enable skeleton-pair insert globally
;; (setq skeleton-pair t)
;; (setq skeleton-pair-on-word t)
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe) ; Not useful for R, or lisp
(global-set-key (kbd "\`") 'skeleton-pair-insert-maybe) ; Not useful for R
;; (global-set-key (kbd "<") 'skeleton-pair-insert-maybe)   ; Not useful for R
;;
;; electric-pair-mode to automatically close brackets (New in emacs 24.1)
;; http://www.emacswiki.org/emacs/AutoPairs
(electric-pair-mode t)
;;
;; *.r.txt and *.R.txt files activate r-mode            ; Obsolete. Just set TextEdit.app for .R in Finder
;; Maybe useful for result files, open with ESS (emacs) or TextEdit.app (GUI) automatically
;; (setq auto-mode-alist
;;       (cons '("\\.r\\.txt$" . r-mode) auto-mode-alist))
;; (setq auto-mode-alist
;;       (cons '("\\.R\\.txt$" . r-mode) auto-mode-alist))
;;
;; ess-trace-bug.el                     ; filtering ++++ > ??? Not working
;; http://code.google.com/p/ess-tracebug/
(require 'ess-tracebug)
;; (setq ess-use-tracebug t)                    ; permanent activation
(setq ess-tracebug-prefix "\M-t")               ; activate with M-t
;;
;; ESS: highlighting lines that are too long            ; disabled for R Markdown
;; http://emacs-fu.blogspot.jp/2008/12/highlighting-lines-that-are-too-long.html
;; (add-hook 'ess-mode-hook
;;   (lambda ()
;;     (font-lock-add-keywords nil
;;       '(("^[^\n]\\{80\\}\\(.*\\)$" 1 font-lock-warning-face t)))))
;;
;; knitr support                        ; Hacked on 2012-07-02 by K
;; http://sjp.co.nz/posts/emacs-ess-knitr/
;; http://constantmindmapping.wordpress.com/2012/06/12/knitr-and-emacs/
(require 'ess-knitr)
;; Hack shown below added to ess-knitr.el
;; Hack by Kazuki Yoshida on 2012-07-02
;; (defun ess-knit2html ()
;;   "Run knit2html R function on the current .Rmd file"
;;   (interactive)
;;   (ess-swv-run-in-R "require(knitr) ; require(markdown) ; knit2html"))
;; Hack ends here
;;
;; *.Rmd files invoke r-mode                    ; Temporary fix for R markdown files
(setq auto-mode-alist
      (cons '("\\.Rmd$" . r-mode) auto-mode-alist))



;; Markdown mode
;; http://jblevins.org/projects/markdown-mode/
;;
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode) auto-mode-alist))


;; Octave mode
;; http://cliodhna.cop.uop.edu/~hetrick/localdoc/octave/octave_34.html
;;
;; To begin using Octave mode for all `.m' files you visit, add the following lines to a file loaded by Emacs at startup time, typically your `~/.emacs' file:
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
;; Finally, to turn on the abbrevs, auto-fill and font-lock features automatically, also add the following lines to one of the Emacs startup files:
(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))


;; Buffer Management
;;
;; Swap buffers with C-x /
;; http://stackoverflow.com/questions/1510091/with-emacs-how-do-you-swap-the-position-of-2-windows
(defun swap-buffer ()
  (interactive)
  (cond ((one-window-p) (display-buffer (other-buffer)))
        ((let* ((buffer-a (current-buffer))
                (window-b (cadr (window-list)))
                (buffer-b (window-buffer window-b)))
           (set-window-buffer window-b buffer-a)
           (switch-to-buffer buffer-b)
           (other-window 1)))))
(global-set-key (kbd "C-x /") 'swap-buffer)     ; Enabled for everywhere
;;
;; buffer-menu+.el
;; http://www.emacswiki.org/emacs/BufferMenuPlus#BufferMenu
(require 'buff-menu+)
(add-to-list 'same-window-buffer-names "*Buffer List*")     ;; Open in current window
(global-set-key (kbd "C-x M-b") 'buffer-menu-other-window)  ;; Open in other window
;;
;; Sort by mode name
;; Number corresponds to buffer-menu+ column number
(setq Buffer-menu-sort-column 5) ;; 1CRM, 2Buffer, 3Size, 4Time, 5Mode, 6File
;;
;; bs-show for buffer listing. Use c to make it more complete
;; http://www.emacswiki.org/emacs/BufferSelection
;;(global-set-key (kbd "C-x b") 'bs-show)
;;
;; iswitchb.el Strengthen swtich-to-buffer ; not useful
;; http://www.emacswiki.org/emacs/IswitchBuffers
;; (iswitchb-mode 1)
;; (setq read-buffer-function 'iswitchb-read-buffer)
;; (setq iswitchb-regexp nil)
;; (setq iswitchb-prompt-newbuffer nil)
;;
;; tempbuf.el   Auto-delete unused idle buffers such as dired
;; http://www.emacswiki.org/emacs/tempbuf.el
(require 'tempbuf)
(add-hook 'help-mode-hook 'turn-on-tempbuf-mode)        ; Idle help closed
(add-hook 'find-file-hooks 'turn-on-tempbuf-mode)       ; Idle unedited files closed
(add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)       ; Idle dired closed
(add-hook 'ess-help-mode-hook 'turn-on-tempbuf-mode)        ; Idle ESS help closed
(add-hook 'completion-list-mode-hook 'turn-on-tempbuf-mode) ; Idle completion closed
(add-hook 'vc-annotate-mode-hook 'turn-on-tempbuf-mode)     ; Idle VC annotate closed
(add-hook 'log-view-mode-hook 'turn-on-tempbuf-mode)        ; Idle VC change log closed
(add-hook 'diff-mode-hook 'turn-on-tempbuf-mode)        ; Idle VC diff closed
;; (add-hook 'fundamental-mode-hook 'turn-on-tempbuf-mode)  ; Idle auto-install closed. Not working
;;
;; Recent files extended
;; Book by rubikitch p87
;; http://d.hatena.ne.jp/rubikitch/20091224/recentf
;; http://www.mygooglest.com/fni/dot-emacs.html
(setq recentf-save-file  "~/.emacs.d/.recentf")     ; save file within ~/.emacs.d
(setq recentf-max-saved-items 3000)
(require 'recentf-ext)
(global-set-key (kbd "C-z") 'recentf-open-files)
;;
;; recentf auto-save
;; http://d.hatena.ne.jp/tomoya/20110217/1297928222
(when (require 'recentf nil t)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer
        (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1))
;;
;; Auto-saving buffers
;; auto-save-buffers: Never lose your data
;; http://0xcc.net/misc/auto-save/
;; http://homepage3.nifty.com/oatu/emacs/archives/auto-save-buffers.el
(require 'auto-save-buffers)
(run-with-idle-timer 1 t 'auto-save-buffers)    ; auto-save if idle for 1 sec


;; Window management
;;
;; Useful shortcuts
;; http://stackoverflow.com/questions/2901198/useful-keyboard-shortcuts-and-tips-for-ess-r
;; C-tab to switch to other window.
;; (global-set-key [C-tab] 'other-window)
;;
;; C-tab to split or switch to other window. Book by rubikitch p74
;; http://d.hatena.ne.jp/rubikitch/20100210/emacs
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p) (split-window-horizontally)) ; When there's only one window, split horizontally.
  (other-window 1))
(global-set-key [C-tab] 'other-window-or-split)
;; Reversal
;; http://stackoverflow.com/questions/143072/in-emacs-what-is-the-opposite-function-of-other-window-c-x-o
(global-set-key [C-S-tab] 'previous-multiframe-window)  ;; Added by K
;;
;; Control and up/down arrow keys to search history with matching what you've already typed:
;; (define-key comint-mode-map [C-up] 'comint-previous-matching-input-from-input)   ; Overlap with Auto-scroll
;; (define-key comint-mode-map [C-down] 'comint-next-matching-input-from-input)
;;
;; other-frame with C-x o, instead of other-window
(global-set-key (kbd "C-x o") 'other-frame)


;; Auto-intall
;; http://www.emacswiki.org/AutoInstall
;; http://www.emacswiki.org/emacs/auto-install.el
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/") ;; default
;;
;; emacs customization book by rubikitch
;; EmacsWiki added for auto-completion list at startup
;; http://spiri-tua-lism.com/?p=451
(setq auto-install-use-wget t)
(auto-install-update-emacswiki-package-name t)   ;; Required "sudo ln -s /usr/local/bin/wget /usr/bin/wget"
;; install-elisp.el compatilibity
(auto-install-compatibility-setup)
;; ediff associated buffers in one frame
(setq ediff-windows-setup-function 'ediff-setup-windows-plain)


;; Anything
;; http://www.emacswiki.org/emacs/Anything
(require 'anything-config)
;;
;; Anything for auto-install
;; http://www.emacswiki.org/AutoInstall
(require 'anything-auto-install)
(setq anything-sources
      (list
       anything-c-source-auto-install-from-emacswiki
       anything-c-source-auto-install-from-library
       ))
;;
;; Anything-R
;; http://sheephead.homelinux.org/2010/05/24/1846/
;; http://www.emacswiki.org/emacs/anything-R.el
(require 'anything-R)
(define-key ess-mode-map (kbd "C-c r") 'anything-for-R)         ;; Slightly changed (kbd )
(define-key inferior-ess-mode-map (kbd "C-c r") 'anything-for-R)
;;
;; Anything configuration
(define-key global-map (kbd "C-;") 'anything)
;;
(setq anything-sources
      '(anything-c-source-buffers+
    anything-c-source-imenu
    anything-c-source-emacs-commands
    anything-c-source-file-name-history
    anything-c-source-locate
    anything-c-source-man-pages
    anything-c-source-occur
    anything-c-source-recentf
    anything-c-source-R-local
    anything-c-source-R-help
    anything-c-source-kill-ring
    anything-c-source-R-localpkg
    anything-c-source-R-repospkg
    ))
;;
(setq anything-idle-delay 0.3)
(setq anything-input-idle-delay 0.2)
;;
(define-key anything-map (kbd "C-p") 'anything-previous-line)
(define-key anything-map (kbd "C-n") 'anything-next-line)
(define-key anything-map (kbd "C-v") 'anything-next-source)
(define-key anything-map (kbd "M-v") 'anything-previous-source)


;; One-key
;;
;; http://d.hatena.ne.jp/rubikitch/20090127/onekey
;; http://d.hatena.ne.jp/tomoya/20090415/1239809615
;; http://www.emacswiki.org/emacs/OneKey
(require 'one-key-default)              ; one-key.el loaded together
;; (require 'one-key-config)                ; many examples of template code
(one-key-default-setup-keys)                ; Enable one-key- menu
;; (define-key global-map "\C-x" 'one-key-menu-C-x) ; C-x assigned to commands


;; Key-Chord
;;
;; http://www.emacswiki.org/emacs/KeyChord
;; http://d.hatena.ne.jp/rubikitch/touch/20081104/1225745862
(require 'key-chord)
(setq key-chord-two-keys-delay 0.04)
(key-chord-mode 1)
;;
;; Viper mode activation/deactivation
;; (key-chord-define-global "jk" 'toggle-viper-mode)        ; view-mode used now
;; (key-chord-define-global "kl" 'toggle-viper-mode)
;;
;; R object name completion in ESS
(key-chord-define-global "df" 'ess-complete-object-name)        ; C-c TAB emulation
(key-chord-define-global "sd" 'comint-dynamic-complete-filename)    ; M-TAB emulation
;;
;; auto-complete.el
(key-chord-define-global "ac" 'auto-complete-mode)  ; Toggling auto-complete-mode
;;
;; eval-region
(key-chord-define-global "er" 'eval-region)     ; Evaluate region for elisp
;;
;; word-count.el
(key-chord-define-global "wc" 'word-count-mode)     ; Choose region and activate for continous word count
;;
;; Comment or Uncomment region
(key-chord-define-global "cr" 'comment-region)
(key-chord-define-global "ur" 'uncomment-region)
;;
;; replace-string
(key-chord-define-global "rs" 'replace-string)
;;
;; view-mode
(key-chord-define-global "jk" 'view-mode)       ; Enter read-only mode
;;
;; crosshairs.el
(key-chord-define-global "ch" 'crosshairs-mode)     ; Activate continuous crosshairing
;;
;; paredit.el
(key-chord-define-global "pe" 'paredit-mode)        ; Toggle paredit-mode
;;
;; flyspell-mode
(key-chord-define-global "fs" 'flyspell-mode)       ; Toggle flyspell-mode


;; view-mode            ; C-x C-r to open in view-mode. Requires viewer.el
;; Book by rubikitch p214-
;; http://d.hatena.ne.jp/rubikitch/20081104/1225745862
;; http://d.hatena.ne.jp/syohex/20110114/1294958917
(setq view-read-only t)
(require 'viewer)
(viewer-stay-in-setup)
(setq viewer-modeline-color-unwritable "tomato"
      viewer-modeline-color-view "orange")
(viewer-change-modeline-color-setup)
(require 'view)
;; less like
(define-key view-mode-map (kbd "N") 'View-search-last-regexp-backward)
(define-key view-mode-map (kbd "?") 'View-search-regexp-backward )
(define-key view-mode-map (kbd "G") 'View-goto-line-last)
(define-key view-mode-map (kbd "b") 'View-scroll-page-backward)
(define-key view-mode-map (kbd "f") 'View-scroll-page-forward)
;; vi/w3m like
(define-key view-mode-map (kbd "h") 'backward-char)
(define-key view-mode-map (kbd "j") 'next-line)
(define-key view-mode-map (kbd "k") 'previous-line)
(define-key view-mode-map (kbd "l") 'forward-char)
(define-key view-mode-map (kbd "J") 'View-scroll-line-forward)
(define-key view-mode-map (kbd "K") 'View-scroll-line-backward)


;; crosshairs.el: highlight current line/column using hl-line(+).el/col-highlight.el
;; http://www.emacswiki.org/emacs/CrosshairHighlighting
(require 'crosshairs)
;; (toggle-crosshairs-when-idle t) ; No need for crosshairs when idle
;;
;; hl-line+.el: highlight current line only (no column)
;; http://www.emacswiki.org/emacs/HighlightCurrentLine#toc3
;; (require 'hl-line+)      ; required by crosshairs already
(toggle-hl-line-when-idle t)    ; turned on line highlight when idle
;;
;; To customize the background color
(set-face-background 'hl-line "light goldenrod yellow")         ; Line color
(set-face-background 'col-highlight "light goldenrod yellow")   ; Column color
;; (set-face-background 'hl-line "lemon chiffon")       ; Line color
;; (set-face-background 'col-highlight "lemon chiffon")     ; Column color


;; word-count.el
;; http://taiyaki.org/elisp/word-count/src/word-count.el
(setq load-path (cons (expand-file-name "~/elisp") load-path))
(autoload 'word-count-mode "word-count"
  "Minor mode to count words." t nil)
;; (global-set-key "\M-+" 'word-count-mode) ;; Turned by K. Conflict with other functions.
;; How to use:
;; 1). M-+ (word-count-mode) toggles word-count mode.
;; 2). M-[space] (word-count-set-area) sets area for counting words.
;; 3). M-x word-count-set-region sets region or paragraph for counting words.
;; 4). M-x word-count-set-marker sets marker for counting words.


;; ;; e2wn      ; Window management system      ; Inactivated 2012-10-15
;; ;; e2wm minimal configuration (requires window-layout.el)
;; ;; http://d.hatena.ne.jp/kiwanami/20100528/1275038929
;; (require 'e2wm)
;; (global-set-key (kbd "M-+") 'e2wm:start-management)
;; ;;
;; ;; e2wn-R (requires inlineR.el)
;; ;; http://sheephead.homelinux.org/2011/03/15/6687/
;; (require 'e2wm-R)
;; ;;
;; ;; cacoo                 ;; Not sure if useful. iimage-mode enough?
;; ;; http://d.hatena.ne.jp/kiwanami/20100507/1273205079
;; ;; (require 'cacoo)
;; ;; (global-set-key (kbd "M--") 'toggle-cacoo-minor-mode)


;; sense-region for column editing      ; Not compatible with CUA mode?
;; http://tech.kayac.com/archive/emacs-rectangle.html
;; http://taiyaki.org/elisp/sense-region/src/sense-region.el
;; (require 'sense-region)
;; (sense-region-on)


;; Spell checker
;; http://blog.bungu-do.jp/archives/2426    ;; sudo port install aspell aspell-dict-en
(setq ispell-program-name "/usr/local/bin/aspell")


;; Undo tree
;; http://www.emacswiki.org/emacs/UndoTree
;; C-/ for undo. C-? (C-S-/) for redo.
(require 'undo-tree)
(global-undo-tree-mode)


;; point-undo
;; http://d.hatena.ne.jp/rubikitch/20081230/pointundo
(require 'point-undo)
(define-key global-map [f7] 'point-undo)
(define-key global-map [S-f7] 'point-redo)


;; go to last change
;; http://www.emacswiki.org/emacs/GotoChg
(require 'goto-chg)
(global-set-key [f8] 'goto-last-change)
(global-set-key [S-f8] 'goto-last-change-reverse)


;; sequential-command.el
;; Book by rubikitch p76. M-x auto-install-batch sequential-command (two files, one -config)
;; http://d.hatena.ne.jp/rubikitch/20090219/sequential_command
(require 'sequential-command-config)    ; config file
(sequential-command-setup-keys)     ; Rebind C-a, C-e, M-u, M-c, and M-l to seq-* commands.
;; (global-set-key "\C-a" 'seq-home)
;; (global-set-key "\C-e" 'seq-end)
;; (global-set-key "\M-u" 'seq-upcase-backward-word)
;; (global-set-key "\M-c" 'seq-capitalize-backward-word)
;; (global-set-key "\M-l" 'seq-downcase-backward-word)
;;
;; smartchr.el      ; Hinders smooth cursor motion, thus turned off
;; Similar elips: http://tech.kayac.com/archive/emacs-tips-smartchr.html
;; (require 'smartchr)
;; (global-set-key (kbd "=") (smartchr '(" = " " == " "=")))    ; =
;; (global-set-key (kbd "(") (smartchr '("(`!!')" "(")))        ; ()
;; (global-set-key (kbd "[") (smartchr '("[`!!']" "[")))        ; []
;; (global-set-key (kbd "{") (smartchr '("{`!!'}" "{")))        ; {}
;; (global-set-key (kbd "\"") (smartchr '("\"`!!'\"" "\"")))    ; ""
;; (global-set-key (kbd "\'") (smartchr '("\'`!!'\'" "\'")))    ; ''


;; bash-completion in emacs' shell (M-x shell)
;; http://stackoverflow.com/questions/163591/bash-autocompletion-in-emacs-shell-mode
;; https://github.com/szermatt/emacs-bash-completion
;;
;; http://www.namazu.org/~tsuchiya/elisp/shell-command.el
(require 'shell-command)
(shell-command-completion-mode)
;;
;; https://github.com/szermatt/emacs-bash-completion
(autoload 'bash-completion-dynamic-complete
  "bash-completion"
  "BASH completion hook")
(add-hook 'shell-dynamic-complete-functions
      'bash-completion-dynamic-complete)
(add-hook 'shell-command-complete-functions
      'bash-completion-dynamic-complete)


;; TabBar
;; http://www.emacswiki.org/cgi-bin/wiki/TabBarMode
;; (tabbar-mode )       ;; This does not work
;; C-x <left/right> defined by simple.el for previous/next buffer.
;; C-x C-<left> ;; C-x C-<right>  ;; These do not work?
;; (global-set-key (kbd "C-x C-<right>") 'tabbar-forward-group)
;; (global-set-key (kbd "C-x C-<left>") 'tabbar-backward-group)


;; Mac AppleScrip compatibility
;; http://d.hatena.ne.jp/tequilasunset/touch/20110104/p2
;; https://gist.github.com/764745#file_my_mac_key_mode.el
(defun do-applescript+ (&rest scripts)
  "Like `do-applescript', but execute concatenated SCRIPTS.
In case the execution fails, return an error."
  (condition-case err
      (do-applescript
       (apply 'concat scripts))
    (error err)))
;;
(defun show-in-finder (&optional path behind)
  "Display current file/directory in a Finder window"
  (interactive)
  (let ((item (or path
                  buffer-file-name
                  (and (eq major-mode 'dired-mode) default-directory))))
    (cond
     ((not (stringp item)))
     ((file-remote-p item)
      (error "This item is located on a remote system."))
     (t
      (setq item (expand-file-name item))
      (do-applescript+
       "tell application \"Finder\" to select (\""
       item
       "\" as POSIX file)\n"
       (unless behind
         "tell application \"Finder\" to activate"))))))
;;
(defun open-terminal (&optional path behind)
  "Launch Terminal and go to the relevant directory"
  (interactive)
  (let ((item (or path default-directory)))
    (cond
     ((not (stringp item)))
     ((file-remote-p item)
      (error "This item is located on a remote system."))
     ((file-directory-p item)
      (setq item (expand-file-name item))
      (do-applescript+
       "tell application \"Terminal\" to do script "
       "with command \"cd \" & quoted form of \""
       item
       "\"\n"
       (unless behind
         "tell application \"Terminal\" to activate")))
     (t
      (error "An error occured")))))


;; cmigemo (installed from brew)    ; Not working well
;; http://0xcc.net/migemo/
;; https://gist.github.com/457761
;; (require 'migemo)
;; (setq migemo-command "/usr/local/bin/cmigemo")
;; (setq migemo-options '("-q" "--emacs" "-i" "\a"))
;; (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
;; (setq migemo-user-dictionary nil)
;; (setq migemo-regex-dictionary nil)


;; Programming (See rubikitch book 2 page 31)
;;
;; open-junk-file.el
(require 'open-junk-file)
(global-set-key (kbd "C-x C-z") 'open-junk-file)    ; Open junk file
;;
;; lispxmp.el
(require 'lispxmp)
(define-key emacs-lisp-mode-map (kbd "C-c C-d") 'lispxmp)   ; annotation
;;
;; paredit.el
;; M-x install-elisp http://mumble.net/~campbell/emacs/paredit.el
(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)
;; (add-hook 'ess-mode-hook 'enable-paredit-mode)       ; paredit for ESS. too restrictive
;; No space when inserted after a word
;; http://stackoverflow.com/questions/913449/changing-paredit-formatting
(defun paredit-space-for-delimiter-p (endp delimiter)
  (and (not (if endp (eobp) (bobp)))
       (memq (char-syntax (if endp (char-after) (char-before)))
             (list ?\"  ;; REMOVED ?w ?_
                   (let ((matching (matching-paren delimiter)))
                     (and matching (char-syntax matching)))))))
;;
;; Auto byte-compile .el files at saving
;; http://www.emacswiki.org/emacs/auto-async-byte-compile.el
;; http://d.hatena.ne.jp/rubikitch/20100423/bytecomp
(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-exclude-files-regexp "/junk/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)
;;
;; Use Emacs23's eldoc
(require 'eldoc)
;; eldoc-extension
;; http://d.hatena.ne.jp/rubikitch/20090207/1233936430
(require 'eldoc-extension)
(setq eldoc-idle-delay 0)
(setq eldoc-echo-area-use-multiline-p t)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(setq eldoc-minor-mode-string "")       ; No need for ElDoc in modeline (rubikitch book p231)
;;
(global-set-key "\C-m" 'newline-and-indent) ; \n and indent at once
(find-function-setup-keys)          ; find-function key assigned?



;; Version Control with vc.el (rcs)
;; Don't mess with windows
;; http://stackoverflow.com/questions/6963241/git-commits-in-emacs-without-changing-window-layout
;;
;; $ rcs -l file.name   ; if lock goes bad
;;
;; C-c C-c runs the command log-edit-done, which is an interactive
;; compiled Lisp function in `log-edit.el'.
;; It is bound to C-c C-c, <menu-bar> <Log-Edit> <Done>.
;; (log-edit-done)
;; Finish editing the log message and commit the files.
;; If you want to abort the commit, simply delete the buffer.
;;
;; defadvice
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Around_002dAdvice.html#Around_002dAdvice
;;
;; Use winner-mode for the time being



;; Python support
;; Wiki: http://www.emacswiki.org/emacs/?action=browse;oldid=PythonMode;id=PythonProgrammingInEmacs
;;
;; python.el (comes with emacs)
;; http://jesselegg.com/archives/2010/02/25/emacs-python-programmers-part-1/
;; http://d.hatena.ne.jp/cou929_la/20110525/1306321857
;; $pip install pyflakes pep8 # This does not work
;;
;; python-mode.el (not installed currently 2012-10-07)
;; https://launchpad.net/python-mode
;; http://pedrokroger.net/2010/07/configuring-emacs-as-a-python-ide-2/
;; http://tech.lampetty.net/tech/index.php/archives/380



;; MIT-Scheme
;; http://www.shido.info/lisp/scheme1.html
(setq scheme-program-name "/Applications/Scheme.app/Contents/Resources/mit-scheme")
Matches in page for 'ess-R-object-popup
Greek goes bad. ;; Method 2 for Japanese fonts ; This works with ESS(R). ..... '(lambda() (local-set-key [(shift return)] 'my-ess-eval))) ;; (require 'ess-site) ;; This is present in the top. ;; ;; ess-R-object-popup.el ;; Replacing R Object Tooltips in ESS ... »
More matches »FeedbackBug


