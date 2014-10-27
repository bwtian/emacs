;;; grass-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (sgrass grass grass-help-browser grass-log-dir
;;;;;;  grass-prompt-2 grass-prompt grass-default-mapset grass-default-location
;;;;;;  grass-grassdata grass-eldoc-args grass-completion-file grass-grass-programs-alist
;;;;;;  grass-mode) "grass-mode" "grass-mode.el" (21582 1084 277254
;;;;;;  218000))
;;; Generated autoloads from grass-mode.el

(let ((loads (get 'grass-mode 'custom-loads))) (if (member '"grass-mode" loads) nil (put 'grass-mode 'custom-loads (cons '"grass-mode" loads))))

(define-widget 'grass-program-alist 'lazy "\
Format of `grass-grass-program-alist'." :type (quote (repeat (group (string :tag "Program name (user-readable)") (file :tag "GRASS executable") (directory :tag "Script directory") (directory :tag "HTML documentation directory")))))

(defvar grass-grass-programs-alist '(("Grass64" "/usr/bin/grass" "/usr/lib/grass64" "/usr/share/doc/grass-doc/html")) "\
Alist of grass programs with their binary, script directory, and documentation directory. 
Elements are lists (PROGRAM-NAME BINARY SCRIPT-DIRECTORY DOC-DIRECTORY). PROGRAM-NAME is
the name of the binary as it will be presented to the user. BINARY is the full path to the
GRASS program. SCRIPT-DIRECTORY is the directory where all the GRASS commands are found.
DOC-DIRECTORY is the directory where the HTML help files are found.")

(custom-autoload 'grass-grass-programs-alist "grass-mode" t)

(defvar grass-completion-file (locate-user-emacs-file "grass-completions") "\
Default name of file to store completion table in.")

(custom-autoload 'grass-completion-file "grass-mode" t)

(defvar grass-eldoc-args nil "\
If non-nil, eldoc displays the arguments of the GRASS function, rather than the
function description.")

(custom-autoload 'grass-eldoc-args "grass-mode" t)

(defvar grass-grassdata "~/grassdata" "\
The directory where grass locations are stored.")

(custom-autoload 'grass-grassdata "grass-mode" t)

(defvar grass-default-location nil "\
The default starting location.")

(custom-autoload 'grass-default-location "grass-mode" t)

(defvar grass-default-mapset "PERMANENT" "\
The default starting mapset.")

(custom-autoload 'grass-default-mapset "grass-mode" t)

(defvar grass-prompt "$LOCATION_NAME:$MAPSET> " "\
String to format the Grass prompt.
$LOCATION_NAME expands to the name of the grass location.
$MAPSET expands to the name of the grass location.
Normal bash prompt expansions are available, such as:
\\w - the current working directory
\\W - the  basename  of the current working directory")

(custom-autoload 'grass-prompt "grass-mode" t)

(defvar grass-prompt-2 "> " "\
String to format the Grass continuation-line prompt, PS2.
The same formatting options from grass-prompt are available.")

(custom-autoload 'grass-prompt-2 "grass-mode" t)

(defvar grass-log-dir (concat grass-grassdata "/logs") "\
The default directory to store interactive grass session logs.
Set this to nil to turn off logging.")

(custom-autoload 'grass-log-dir "grass-mode" t)

(defvar grass-help-browser 'external "\
Which browser to use to view GRASS help files.
A symbol (not a string!): `external' for the external web browser called via browse-url;
`eww' for the built-in Emacs eww web-browser;
`w3m' for the w3m.el interface to w3m (must be installed separately)")

(custom-autoload 'grass-help-browser "grass-mode" t)

(autoload 'grass "grass-mode" "\
Start the Grass process, or switch to the process buffer if it's
already active. With a prefix force the creation of a new process.

\(fn PREF)" t nil)

(autoload 'sgrass "grass-mode" "\
Attach the current buffer to a Grass process.
If there is no currently active grass process, a new one will be started.
If sgrass-minor-mode is already active in the buffer, deactivate it.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("grass-mode-pkg.el") (21582 1084 344825
;;;;;;  37000))

;;;***

(provide 'grass-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; grass-mode-autoloads.el ends here
