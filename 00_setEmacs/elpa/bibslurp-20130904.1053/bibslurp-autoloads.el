;;; bibslurp-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (bibslurp-query-ads) "bibslurp" "bibslurp.el" (21507
;;;;;;  14463 895455 100000))
;;; Generated autoloads from bibslurp.el

(autoload 'bibslurp-query-ads "bibslurp" "\
Interactive function which asks for a search string and sends
the query to NASA ADS.  Displays results in a new buffer called
\"ADS Search Results\" and enters `bibslurp-mode'.  You can
retrieve a bibtex entry by typing the number in front of the
abstract link and hitting enter.  Hit 'a' instead to pull up the
abstract.  You can exit the mode at any time by hitting 'q'.

\(fn &optional SEARCH-STRING)" t nil)

;;;***

;;;### (autoloads nil nil ("bibslurp-pkg.el") (21507 14463 905293
;;;;;;  408000))

;;;***

(provide 'bibslurp-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bibslurp-autoloads.el ends here
