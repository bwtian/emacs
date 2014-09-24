;;; bibretrieve-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (bibretrieve) "bibretrieve-base" "bibretrieve-base.el"
;;;;;;  (21507 14465 783343 900000))
;;; Generated autoloads from bibretrieve-base.el

(autoload 'bibretrieve "bibretrieve-base" "\
Search the web for bibliography entries.

After prompting for author and title, searches on the web, using the
backends specified by the customization variable
`bibretrieve-backends'.  A selection process (using RefTeX Selection)
allows to select entries to add to the current buffer or to a
bibliography file.

 When called with a `C-u' prefix, permits to select the backend and the
 timeout for the search.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("bibretrieve-pkg.el" "bibretrieve.el")
;;;;;;  (21507 14465 796671 395000))

;;;***

(provide 'bibretrieve-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bibretrieve-autoloads.el ends here
