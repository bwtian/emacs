
;; Set default workspace
 (setq default-directory "~/Dropbox/")
;; Language.
 (set-language-environment 'English)
 (set-buffer-file-coding-system 'utf-8)
 (prefer-coding-system 'utf-8)
 (set-language-environment  'utf-8)
 (prefer-coding-system 'utf-8)
 (setq locale-coding-system 'utf-8)
 (set-default-coding-systems 'utf-8)
 (set-file-name-coding-system 'utf-8)
 (set-keyboard-coding-system 'utf-8)
 (set-clipboard-coding-system 'utf-8)
 (set-terminal-coding-system 'utf-8)
 (setq coding-system-for-read 'utf-8)
 (setq coding-system-for-write 'utf-8)
 ;;(set-default-buffer-file-coding-system 'utf-8)
 ;;(set-buffer-file-coding-system-for-write 'utf-8)



 ;;(setq initial-frame-alist '((top . 10) (left . 10) (width . 80) (height . 40)))
 ;;(setq initial-frame-alist (quote ((fullscreen . maximized))))
 (setq default-frame-alist
        '((background-color . "DarkSlateGray") ;;Colors:black,darkblue,abc88b,DarkSlateGray,#171717
         (foreground-color  . "Wheat") ;;Colors:white,grey85,Wheat,#c0c0c0,
         (mouse-color       . "green")  ;;Colors:blue,steelblue,gold1
         (cursor-color      . "green"))) ;;Colors:green.red,white,gold2
 ;; (setq default-frame-alist
 ;;       (append (list
 ;;                '(alpha . (90 90)) ;; 90,85
 ;;                ) default-frame-alist))


 ;; =========================
 ;; 0.0 Version Contorl
 ;; =========================
 (setq backup-by-copying t) ;automatically backup
 ;; place all auto-saves and backups in the directory pointed to by temporary-file-directory
 ;; (e.g., /tmp; C:/Temp/ on Windows).
 (setq backup-directory-alist
       `((".*" . ,temporary-file-directory)))
 (setq auto-save-file-name-transforms
       `((".*" ,temporary-file-directory t)))
 (setq kept-new-versions 5) ;Keep 6 newest Bankup files
 (setq kept-old-versions 2) ;Keep 3 oldest Bankup files
 (setq delete-old-versions t) ;Delete old versions
 (setq version-control t) ; Multitime backup
 (setq kill-ring-max 200)
 (setq delete-auto-save-files t) ; Delete Auto-save file When quit
 (setq x-select-enable-clipboard t) ;; enable Copy from outside
 (setq make-backup-files nil) ; stop creating those backup~ files
 (setq auto-save-default nil) ; stop creating those #autosave# files
 (recentf-mode 1) ; keep a list of recently opened files
 ;; ==========================
 ;; 0.0 Make pair of {,[ and (
 ;; ==========================
 (setq skeleton-pair t) ;; Skeleton library provides pair insertion via the skeleton-insert-maybe
 (setq skeleton-pair-on-word t)
 (electric-pair-mode t)
 (global-set-key "("  'skeleton-pair-insert-maybe)
 ;;(global-set-key "<"  'skeleton-pair-insert-maybe)
 (global-set-key "["  'skeleton-pair-insert-maybe)
 (global-set-key "{"  'skeleton-pair-insert-maybe)
 (global-set-key "\"" 'skeleton-pair-insert-maybe)
 (global-set-key "\%" 'skeleton-pair-insert-maybe)
 (global-set-key "\;" 'skeleton-pair-insert-maybe)
 (global-set-key "\'" 'skeleton-pair-insert-maybe)
 (global-set-key "\`" 'skeleton-pair-insert-maybe)
 ;;(global-set-key "\:" 'skeleton-pair-insert-maybe)
 ;; Show highlight as under line :Other Highlight Parentheses mode
 (setq show-paren-delay 0)           ; how long to wait? ;; default was o.15s
 (show-paren-mode t)                 ; turn paren-mode on match highlighting
 (setq show-paren-style  'expression) ; highlight entire bracket expression alternatives are 'parenthesis' and 'mixed'
 (set-face-foreground    'show-paren-mismatch-face "red")
 (set-face-background    'show-paren-match-face nil) ;; for colors change nil to color
 (set-face-foreground    'show-paren-match-face nil)
 (set-face-attribute     'show-paren-match-face nil
                     ;;:background nil :foreground nil
                     :underline nil :weight 'extra-bold :overline nil :slant 'normal) ;; #ffff00
 ;; ==============================
 ;; 0.0  Coment or Uncoment
 ;; ==============================
 (global-set-key (kbd "C-c c") 'comment-region)   ;; make C-c C-c and C-c C-u work
 (global-set-key (kbd "C-c u") 'uncomment-region) ;; for comment/uncomment region in all modes
 (global-set-key "\M-g" 'goto-line)
 ;; =========================
 ;; 0.0 Bars and Displays
 ;; =========================
 ;; Start Message
 (setq inhibit-startup-message t)  ;; nil=show, do not show log
 ;; Title Bar
 (setq frame-title-format "emacs@%b %f") ;; Show buffer name in Title bar
 ;; Menu Bar
 (menu-bar-mode t) ;; show menubar
 ;; Tool Bar
 (tool-bar-mode 0) ;; 1 to show toolbar
 ;; Scroll Bar
 (set-scroll-bar-mode t) ;;'right
 ;; Lines
 (global-linum-mode 1)  ; turn on display line numbers in margin.
 ;;(global-hl-line-mode 1) ; turn on highlighting current line
 ;; Wrap-mode: soft Warp at word boundary
 (global-visual-line-mode 1) ;; Make lines soft wrapped at word boundary
 ;;(setq default-truncate-lines t) ;;Make lines NOT soft-wrap and short lines
 ;; make side by side buffers function the same as the main window
 ;; (setq truncate-partial-width-windows nil)  ;; for vertically-split windows
 ;; (global-set-key (kbd "C-c C-l") 'toggle-truncate-lines)
 ;; (add-hook 'dired-mode-hook (lambda () (setq truncate-lines t)))
 ;; (add-hook 'diff-mode-hook (lambda () (setq truncate-lines t)))
 ;; Sentence
 (setq sentence-end-double-space nil) ; end with a dot, not with two spaces;
 ;; Auto Fill
 (global-visual-line-mode 1) ;; Make lines soft wrapped at word boundary
 ;;set-default 'truncate-lines t) ;;Make lines NOT soft-wrap

 ;; Mode line Bar == Status Bar
 (setq size-indication-mode t)
 (setq line-number-mode t) ;; Line number on mode-line bar
 (setq column-number-mode t) ;; Column number on mode-line bar
 (display-time-mode 1) ;; Show time
 (setq display-time-24hr-format t)
 (setq display-time-day-and-date t)
 (setq display-battery-mode t)

 ;; =========================
 ;; 0.0 Minibuffer
 ;; =========================
 (defalias 'yes-or-no-p 'y-or-n-p) ;; Treat 'y' as yes, 'n' as no
 (setq enable-recursive-minibuffers t) ;; nil
 (icomplete-mode 1)
 (setq resize-mini-windows t) ;; t for autosize nil for not
 ;; Ido: interactively do things with buffers and files
 (ido-mode t)

 ;; don't let the cursor go into minibuffer prompt
 (setq minibuffer-prompt-properties (quote (read-only t point-entered
                                                      minibuffer-avoid-prompt
                                                      face
                                                      minibuffer-prompt)))
 ;; Rename Buffer with C-c r
 (defun rename-file-and-buffer ()
 "Rename the current buffer and file it is visiting."
 (interactive)
 (let ((filename (buffer-file-name)))
   (if (not (and filename (file-exists-p filename)))
       (message "Buffer is not visiting a file!")
     (let ((new-name (read-file-name "New name: " filename)))
       (cond
        ((vc-backend filename) (vc-rename-file filename new-name))
        (t
         (rename-file filename new-name t)
         (set-visited-file-name new-name t t)))))))
 (global-set-key (kbd "C-c r")  'rename-file-and-buffer)
 

 ;; Window
 ;;(setq pop-up-frames t) ;; each file opens in a new window
 ;;popwin.el and e2wm.el
 (auto-image-file-mode)
 (setq uniquify-buffer-name-style 'forward)
 (auto-compression-mode 1)
 (setq Man-notify-method 'pushy)
 ;;(setq default-abbrev-mode t)
 ;; eldoc mode for minibuffer helper
  (eldoc-mode 1)
  (setq ess-eldoc-show-on-symbol nil) ;; not just in the ()
  (setq ess-eldoc-abbreviation-style 'aggressive)

;; ##############################################################################
 ;; Org-mode:Note,TODO,Plan,GTD,Babel,.emacs
 ;; ##############################################################################
;; (require 'org-install)
 ;; OS type
   ;; (add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\|todo\\|note)\\'"
 ;; . org-mode))
 (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
 (add-to-list 'auto-mode-alist '("\\.org_archive\\'" . org-mode))
 (add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
 (add-to-list 'auto-mode-alist '("\\.todo\\'" . org-mode))
 (add-to-list 'auto-mode-alist '("\\.note\\'" . org-mode))
 (setq default-major-mode 'org-mode) ; for no suffix file
 ;; Turn on Headline indent without many stars
 (setq org-startup-indented nil) ;nil for show stars; t for intedent
 ;; Enable abbrev-mode
 (add-hook 'org-mode-hook (lambda () (abbrev-mode 1)))
 (add-hook 'org-mode-hook 'turn-on-font-lock)    ; Org buffers only
 ;;Standard key bindings
 (global-set-key "\C-cl" 'org-store-link)
 (global-set-key "\C-ca" 'org-agenda)
 (global-set-key "\C-cb" 'org-iswitchb)
 ;;(global-set-key "\C-cc" 'org-capture)
 (add-hook 'org-mode-hook 'turn-on-font-lock)
 (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(setq org-agenda-files
      '(
        "~/Dropbox/org/research.org"
        "~/Dropbox/org/coursera.org"
        "~/Dropbox/org/job.org"
        "~/Dropbox/org/home.org"
        "~/Dropbox/org/reading.org"
        "~/Dropbox/org/org-ical.org"
        "~/Dropbox/org/next.org"
        "~/Dropbox/org/birthday.org"
        "~/Dropbox/org/someday.org"))

;;default todo keywords
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)"  "CANCEL(c)")))

(setq org-tag-alist
  '(("@OFFICE" . ?o) ("@HOME" . ?h) ("@Transport" . ?t)
    ("MAIL" . ?m) ("PROJECT" . ?p)))

;; add time stamps to completed TODO items
(setq org-log-done t) ;; nil for no close info

;; ---------------------------------------------------
;; 3.1.3 Org-babel:active code in Org-mode
;; ---------------------------------------------------
;; http://orgmode.org/worg/org-contrib/babel/languages.html
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
(lilypond    . t)
(octave      . t)
(ditaa       . t)
))
;;; Do not prompt to confirm evaluation
;;; This may be dangerous - make sure you understand the consequences
;;; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)
(setq org-src-window-setup 'current-window) ;; After C-c '
(setq org-src-fontify-natively t) ;; syntax highlighting fontify code in code blocks
;; (setq org-export-htmlize-output-type 'css)


;; Face for Babel
;; (defface org-block-begin-line
;;   '((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF")))
;;   "Face used for the line delimiting the begin of source blocks.")

;; (defface org-block-background
;;   '((t (:background "#FFFFEA")))
;;   "Face used for the source block background.")

;; (defface org-block-end-line
;;   '((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF")))
;;   "Face used for the line delimiting the end of source blocks.")
;;Don't enable this because it breaks access to emacs from my Android phone
;;(setq org-startup-with-inline-images t)

;; R-babel set up for windows
(if (string-equal system-type "windows-nt")
(setq org-babel-R-command "C:/PROGRA~1/R/R-2.15.2/bin/x64/R --slave --no-save"))

;; -- Display images in org mode
;; enable image mode first
(iimage-mode)
;; add the org file link format to the iimage mode regex
(add-to-list 'iimage-mode-image-regex-alist
(cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex "\\)\\]") 1))
;; add a hook so we can display images on load
(add-hook 'org-mode-hook '(lambda () (org-turn-on-iimage-in-org)))
;; function to setup images for display on load
(defun org-turn-on-iimage-in-org ()
"display images in your org file"
(interactive)
(turn-on-iimage-mode)
(set-face-underline-p 'org-link nil))
;; function to toggle images in a org bugger
(defun org-toggle-iimage-in-org ()
"display images in your org file"
(interactive)
(if (face-underline-p 'org-link)
(set-face-underline-p 'org-link nil)
(set-face-underline-p 'org-link t))
(call-interactively 'iimage-mode))
;; I have this function bound to C-l with a call like this:
;;(define-key org-mode-map (kbd "C-S-a") 'org-archive-subtree)

;; (add-to-list 'iimage-mode-image-regex-alist
;;              (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex
;;                            "\\)\\]")  1))

;; (defun org-toggle-iimage-in-org ()
;;   "display images in your org file"
;;   (interactive)
;;   (if (face-underline-p 'org-link)
;;       (set-face-underline-p 'org-link nil)
;;       (set-face-underline-p 'org-link t))
;;   (iimage-mode))

;; (add-hook 'org-mode-hook
;;           (lambda ()
;;             (local-set-key "\M-n" 'outline-next-visible-heading)
;;             (local-set-key "\M-p" 'outline-previous-visible-heading)
;;             ;; table
;;             (local-set-key "\C-\M-w" 'org-table-copy-region)
;;             (local-set-key "\C-\M-y" 'org-table-paste-rectangle)
;;             (local-set-key "\C-\M-l" 'org-table-sort-lines)
;;             ;; display images
;;             (local-set-key "\M-I" 'org-toggle-iimage-in-org)
;;             ;; fix tab
;;             (local-set-key "\C-y" 'yank)
;;             ;; yasnippet (allow yasnippet to do its thing in org files)
;;             (org-set-local 'yas/trigger-key [tab])
;;             (define-key yas/keymap [tab] 'yas/next-field-group)))

;;=======================================================
;; 3.2 evernote-mode: Note,TODO,Twitter
;;======================================================
;; sudo apt-get install ruby ;; install ruby
;; sudo ruby setup.rb ;; in evernote-mode folder

;; (setq evernote-ruby-command "/usr/bin/ruby")

;; (require 'evernote-mode)
;; (setq evernote-username "gistian@gmail.com")
;; (global-set-key "\C-cec" 'evernote-create-note)
;; (global-set-key "\C-ceo" 'evernote-open-note)
;; (global-set-key "\C-ces" 'evernote-search-notes)
;; (global-set-key "\C-ceS" 'evernote-do-saved-search)
;; (global-set-key "\C-cew" 'evernote-write-note)
;; (global-set-key "\C-cep" 'evernote-post-region)
;; (global-set-key "\C-ceb" 'evernote-browser)
;; (setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8")) ; option4xhtml

(define-skeleton org-skeleton
"Header info for a emacs-org file."
"Title: "
"#+TITLE:" str " \n"
"#+AUTHOR: Bingwei TIAN\n"
"#+EMAIL: bwtian@gmail.com\n"
"#+OPTIONS: toc:nil num:nil \n"
"#+STARTUP: showall \n"
"#+LICENSE:All Right Reserved Before [2015-12-31 Thu], After that GPLv3 \n"
"#+CREATED:  \n"
"#+LASTEDIT:  \n"
"#+CATEGORIES: Org-babel, R and R function file \n"
"#+DEPENDENCY:"  " \n"
"#+INPUT:"  " \n"
"#+TEST:"  " \n"
"#+OUTPUT:"  " \n"
"#+BEGIN_SRC R \n"
"#+END_SRC \n")
"#+STARTUP: hidestars"
(global-set-key [C-S-f4] 'org-skeleton)
;; C-c C-e t

(define-skeleton comment-skeleton
"Input #+BEGIN_COMMENT #+END_COMMENT in org-mode"
""
"#+BEGIN_COMMENT\n"
_"\n"
"#+END_COMMENT\n")
(global-set-key [C-ccc] 'comment-skeleton)

(define-skeleton comment-skeleton
"Input code blockers in org-mode"
""
"# ##############################################################################\n"
"# \n"
"# ##############################################################################\n")
(global-set-key [C-S-f5] 'comment-skeleton)

(define-skeleton comment2-skeleton
"Input code blockers in org-mode"
""
"# ==============================================================================\n"
"# \n"
"# ==============================================================================\n")
(global-set-key [C-S-f6] 'comment2-skeleton)

(define-skeleton comment3-skeleton
"Input code blockers in org-mode"
""
"# ------------------------------------------------------------------------------\n"
"# \n"
"# ------------------------------------------------------------------------------\n")
(global-set-key [C-S-f7] 'comment3-skeleton)


(define-skeleton comment4-skeleton
"Input code blockers in org-mode"
""
"# ..............................................................................\n"
"# \n"
"# ..............................................................................\n")
(global-set-key [C-S-f8] 'comment4-skeleton)

(define-skeleton R-skeleton
"Input R babel in org-mode"
""
"#+BEGIN_SRC R\n"
_"\n"
"#+END_SRC\n")
(global-set-key [C-S-f11] 'R-skeleton)


(define-skeleton emacs-lisp-skeleton
"Input Emacs-lisp babel in org-mode"
""
"#+BEGIN_SRC emacs-lisp\n"
_"\n"
"#+END_SRC\n")
(global-set-key [C-S-f12] 'emacs-lisp-skeleton)

(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name) (file-exists-p (buffer-file-name))
       (progn
         ;enable auto-revert-mode to update reftex when bibtex file changes on disk
         (global-auto-revert-mode t)
         (reftex-parse-all)
         ;add a custom reftex cite format to insert links
         (reftex-set-cite-format
          '((?b . "[[bib:%l][%l-bib]]")
            (?n . "[[notes:%l][%l-notes]]")
            (?p . "[[papers:%l][%l-paper]]")
            (?t . "%t")
            (?h . "** %t\n:PROPERTIES:\n:Custom_ID: %l\n:END:\n[[papers:%l][%l-paper]]")))))
  (define-key org-mode-map (kbd "C-c )") 'reftex-citation)
  (define-key org-mode-map (kbd "C-c (") 'org-mode-reftex-search))
  (add-hook 'org-mode-hook 'org-mode-reftex-setup)
(defun org-mode-reftex-search ()
  ;;jump to the notes for the paper pointed to at from reftex search
  (interactive)
  (org-open-link-from-string (format "[[notes:%s]]" (reftex-citation t))))

(require 'org-publish)
;; Project 1 homepage
(setq org-publish-project-alist
'(("homepage"
:base-directory "~/Dropbox/Public/homepage/org/"
:base-extension "org"
:publishing-directory "~/Dropbox/Public/homepage/public_html/"
:recursive t
:publishing-function org-publish-org-to-html
:headline-levels 4             ; Just the default for this project.
:auto-preamble t)))
;;          :preparation-function org-publish-my-sitemap)))
;; :exclude "PrivatePage.org"   ;; regexp
;:with-section-numbers nil
;; :table-of-contents nil
;; :auto-preamble t
;; :auto-postamble nil)
;; (defun org-publish-my-sitemap ()
;;   (interactive)
;;   (org-publish-org-sitemap
;;    '("Diary Sitemap"
;;      :base-directory "~/Dropbox/Public/homepage/src/diary/")
;;      "diary.org"))

;; Project 2 for notes
(setq org-publish-project-alist
'(("note-org"
:base-directory "~/Dropbox/notes/org_note/"
:publishing-directory "~/Dropbox/notes/html_note/"
:base-extension "org"
:recursive t
:publishing-function org-publish-org-to-html
:auto-index nil
:index-filename "index.org"
:index-title "index"
:link-home "index.html"
:section-numbers nil
:style "<link rel=\"stylesheet\"
href=\"./style/emacs.css\"
type=\"text/css\"/>")
("note-static"
:base-directory "~/Dropbox/notes/org_note/"
:publishing-directory "~/Dropbox/notes/html_note/"
:recursive t
:base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|zip\\|gz\\|txt\\|el"
:publishing-function org-publish-attachment)
("note"
:components ("note-org" "note-static")
:author "bwtian@gmail.com"
)))
(global-set-key [C-S-M-f8] 'org-publish)
;; '("orgfiles" :base-directory "~/Documents/org/"
;;         :base-extension "org"
;;         :publishing-directory "/ssh:backup:~/public_html/org/"
;;         :publishing-function org-publish-attachment)
;;  ))

;; setq org-publish-project-alist
;;       '(
;; |       ("web-extra"
;; |        :base-directory rgr-source  ;; **********************************
;; |        :publishing-directory rgr-publish
;; |        :base-extension "gif\\|jpg\\|jpeg\\|png\\|css"
;; |        :publishing-function org-publish-attachment
;; |          :recursive t
;; |        )
;; |       ("web-org"
;; |        :base-directory rgr-source
;; |        :publishing-directory rgr-publish
;; |        :base-extension "org"
;; |        :publishing-function org-publish-org-to-html
;; |          :recursive t
;; |        :section-numbers nil
;; |        :style "<link rel=stylesheet
;; |                      href=\"./style.css\"
;; |                      type=\"text/css\">"
;; |        :auto-preamble t
;; |        :auto-postamble t
;; |        :preamble (format "<div id='Content'><a href='../'>Back</a> - <a
;; href='%s'>Home</a>" rgr-home)
;; |        :postamble "</div>"
;; |        :author nil
;; |        )
;; |       ("web"
;; |        :components("web-org" "web-extra")
;; |        )
;; |       )
;; |       )
;; `;; ----
;; (setq org-directory (concat my:dropbox "org/"))
;; (setq org-default-notes-file (concat org-directory "schedule.org"))
;; (setq org-publish-project-alist
;;       `(
;;         ("public"
;;          :base-directory ,my:org-publish-webpage
;;          :base-extension "org"
;;          :exclude ".*\.el\\|^Makefile\\|.*\.gpg\\|sitemap\.org\\|^cc-env\\|^images\\|^_config\\|^_site\\|^export-config\.org"
;;          :publishing-directory ,my:org-publish-webpage
;;          :publishing-function my:org-jekyll-publish-to-html
;;          :headline-level 4
;;          :html-extension "html"
;;          :auto-sitemap nil
;;          :recursive nil
;;          )
;;         ("work"
;;          :base-directory ,my:org-publish-webpage-work
;;          :base-extension "org"
;;          :exclude ".*\.el\\|^Makefile\\|.*\.gpg\\|sitemap\.org\\|^cc-env\\|^images\\|^_config\\|^_site\\|^export-config\.org"
;;          :publishing-directory ,my:org-publish-webpage-work
;;          :publishing-function my:org-jekyll-publish-to-html
;;          :headline-level 4
;;          :html-extension "html"
;;          :auto-sitemap nil
;;          :recursive nil
;;          )
;;         ("img"
;;          :base-directory ,my:org-publish-webpage-img
;;          :base-extension "jpg\\|png"
;;          :publishing-directory ,my:org-publish-webpage-img
;;          :publishing-function org-publish-attachment
;;          )
;;         ("emacs"
;;          :base-directory ,my:user-emacs-config-directory
;;          :base-extension "org"
;;          :exclude "^export-config\.org\\|^Makefile\\|sitemap\.org"
;;          :publishing-directory ,my:org-publish-emacs-pages
;;          :publishing-function my:org-jekyll-publish-to-html
;;          :headline-level 4
;;          :auto-sitemap nil
;;          :recursive nil
;;          )
;;         ("web" :components ("public" "work" "img"))
;;         ("emacs" :components ("emacs"))
;;         ))

(defun my-org-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
  (interactive)
  (setq filename
        (concat
         (make-temp-name
          (concat (buffer-file-name)
                  "_"
                  (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  (call-process "import" nil nil nil filename)
  (insert (concat "[[" filename "]]"))
  (org-display-inline-images))