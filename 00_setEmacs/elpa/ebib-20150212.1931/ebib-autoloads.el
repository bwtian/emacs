;;; ebib-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ebib-open-org-link ebib) "ebib" "ebib.el" (21725
;;;;;;  35567 637842 81000))
;;; Generated autoloads from ebib.el

(autoload 'ebib "ebib" "\
Ebib, a BibTeX database manager.
Optional argument FILE is a file to load. If FILE is already
loaded, switch to it. If KEY is given, jump to it.

\(fn &optional FILE KEY)" t nil)

(autoload 'ebib-open-org-link "ebib" "\
Open Ebib and jump to KEY.
This is for use in Org-mode links.

\(fn KEY)" nil nil)

;;;***

;;;### (autoloads nil nil ("ebib-db.el" "ebib-filters.el" "ebib-keywords.el"
;;;;;;  "ebib-pkg.el" "ebib-utils.el") (21725 35567 686053 899000))

;;;***

(provide 'ebib-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ebib-autoloads.el ends here
