;;; zotelo-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (moz-command zotelo-reset zotelo-set-collection
;;;;;;  zotelo-update-database zotelo-export-secondary zotelo-minor-mode)
;;;;;;  "zotelo" "zotelo.el" (21766 28950 673040 138000))
;;; Generated autoloads from zotelo.el

(autoload 'zotelo-minor-mode "zotelo" "\
zotelo minor mode for interaction with Firefox.
With no argument, this command toggles the mode. Non-null prefix
argument turns on the mode. Null prefix argument turns off the
mode.

When this minor mode is enabled, `zotelo-set-collection' prompts
for zotero collection and stores it as file local variable . To
manually update the BibTeX data base call
`zotelo-update-database'. The \"file_name.bib\" file will be
created with the exported zotero items. To specify the file_name
just insert insert \\bibliography{file_name} anywhere in the
buffer.

This mode is designed mainly for latex modes and works in
conjunction with RefTex, but it can be used in any other mode
such as org-mode.

\\{zotelo-minor-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'zotelo-export-secondary "zotelo" "\
Export zotero collection into  secondary BibTeX database.
Before export, ask for a secondary database and zotero collection
to be exported into the database. Secondary databases are those
in \\bibliography{file1, file2, ...}, except the first one.

Throw error if there is only one (primary) file listed in
\\bibliography{...}. Throw error if zotero collection is not
found by MozRepl

\(fn)" t nil)

(autoload 'zotelo-update-database "zotelo" "\
Update the primary BibTeX database associated with the current buffer.
Primary database is the first file in \\bibliography{file1, file2,
...}, list. If you want to export into a different file use
`zotelo-update-database-secondary'.

When BIBFILE is supplied, use it instead of the file in
\\bibliography{...}. If ID is supplied, use it instead of the id
from file local variables. Through an error if zotero collection
has not been found by MozRepl

\(fn &optional CHECK-ZOTERO-CHANGE BIBFILE ID)" t nil)

(autoload 'zotelo-set-collection "zotelo" "\
Ask for a zotero collection.
Ido interface is used by default. If you don't like it set
`zotelo-use-ido' to nil.  In `ido-mode' use \"C-s\" and \"C-r\"
for navigation. See ido-mode emacs wiki for many more details.

If no-update is t, don't update after setting the collecton. If
no-file-local is non-nill don't set file-local variable. Return
the properized collection name.

\(fn &optional PROMPT NO-UPDATE NO-FILE-LOCAL)" t nil)

(autoload 'zotelo-reset "zotelo" "\
Reset zotelo.

\(fn)" t nil)

(autoload 'moz-command "zotelo" "\
Send the moz-repl  process command COM and delete the output
from the MozRepl process buffer.  If an optional second argument BUF
exists, it must be a string or an existing buffer object. The
output is inserted in that buffer. BUF is erased before use.

New line is automatically appended.

\(fn COM &optional BUF)" nil nil)

;;;***

;;;### (autoloads nil nil ("zotelo-pkg.el") (21766 28950 743401 741000))

;;;***

(provide 'zotelo-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; zotelo-autoloads.el ends here
