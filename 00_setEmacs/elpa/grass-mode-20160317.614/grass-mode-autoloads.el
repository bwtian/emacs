;;; grass-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "grass-mode" "grass-mode.el" (22439 2504 744447
;;;;;;  853000))
;;; Generated autoloads from grass-mode.el

(let ((loads (get 'grass-mode 'custom-loads))) (if (member '"grass-mode" loads) nil (put 'grass-mode 'custom-loads (cons '"grass-mode" loads))))

(define-widget 'grass-program-alist 'lazy "\
Format of `grass-grass-program-alist'." :type (quote (repeat (group (string :tag "Program name (user-readable)") (file :tag "GRASS executable") (directory :tag "GRASS installation directory")))))

(defvar grass-grass-programs-alist '(("Grass70" "/usr/bin/grass" "/usr/lib/grass70")) "\
Alist of grass programs with their binary, script directory, and documentation directory.
Elements are lists (PROGRAM-NAME BINARY INSTALL-DIRECTORY).

PROGRAM-NAME is the name of the binary as it will be presented to
the user.

BINARY is the full path to the GRASS program.

INSTALL-DIRECTORY is the root directory of the GRASS
installation, where grass-mode will find the bin, scripts and
doc/html directories.

The default values are the locations used in Debian GNU Linux.

** Finding the correct locations on other systems **

As of GRASS70, you can find the location of the INSTALL-DIRECTORY by
issuing the following command on the command-line:

Linux/Mac:
grass --config path

Windows:
C:>grass70.bat --config path


Binary: from the command line, enter 'which grass' to find the
binary location. e.g., which grass -> /usr/bin/grass
")

(custom-autoload 'grass-grass-programs-alist "grass-mode" t)

(defvar grass-completion-file (locate-user-emacs-file "grass-completions") "\
Default name of file to store completion table in.
Users don't need to read or edit this file. The primary (only) reason to
change this variable is if your Emacs configuration does not use .emacs.d/,
or you have some other reason not to want this file in the default location.")

(custom-autoload 'grass-completion-file "grass-mode" t)

(defvar grass-eldoc-args nil "\
If non-nil, eldoc displays the arguments of the GRASS
function, rather than the function description.")

(custom-autoload 'grass-eldoc-args "grass-mode" t)

(defvar grass-grassdata "~/grassdata" "\
The directory where grass locations are stored.")

(custom-autoload 'grass-grassdata "grass-mode" t)

(defvar grass-default-location nil "\
The default starting location for GRASS.
When you start grass-mode, you are prompted for the map location
you wish to open. If this value is set, it will be offered as the
default value for the prompt. Whether or not it is set, you can
still choose any other location in your grassdata directory.")

(custom-autoload 'grass-default-location "grass-mode" t)

(defvar grass-default-mapset "PERMANENT" "\
The default starting GRASS mapset.
When you open a new location, you are prompted for the mapset you
wish to open. If this value is set, it will be offered as the
default value at this prompt. Whether or not it is set, you can
still choose any other location in your grassdata directory.")

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
Set this to nil to turn off logging. If it is not nil, when you quit your
GRASS session, your transcript will be saved to a file in this directory.
The file will be named for the current date.")

(custom-autoload 'grass-log-dir "grass-mode" t)

(defvar grass-help-browser 'eww "\
Which browser to use to view GRASS help files.
A symbol (not a string!):
`eww' for the built-in Emacs eww web-browser (default)
`external' for the external web browser called via browse-url;
 ")

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

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; grass-mode-autoloads.el ends here
