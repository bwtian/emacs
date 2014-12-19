;;; parsebib-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (parsebib-find-next-item parsebib-find-bibtex-dialect)
;;;;;;  "parsebib" "parsebib.el" (21649 27510 957671 400000))
;;; Generated autoloads from parsebib.el

(autoload 'parsebib-find-bibtex-dialect "parsebib" "\
Find the BibTeX dialect of a file if one is set.
This function looks for a local value of the variable
`bibtex-dialect' in the local variable block at the end of the
file. Return nil if no dialect is found.

\(fn)" nil nil)

(autoload 'parsebib-find-next-item "parsebib" "\
Find the first (potential) BibTeX item following POS.

This function simply searches for an @ at the start of a line,
possibly preceded by spaces or tabs, followed by a string of
characters as defined by `parsebib--bibtex-identifier'. When
successful, point is placed right after the item's type, i.e.,
generally on the opening brace or parenthesis following the entry
type, \"@Comment\", \"@Preamble\" or \"@String\".

The return value is the name of the item as a string, either
\"Comment\", \"Preamble\" or \"String\", or the entry
type (without the @). If an item name is found that includes an
illegal character, an error of type `parsebib-entry-type-error'
is raised. If no item is found, nil is returned and point is left
at the end of the buffer.

POS can be a number or a marker and defaults to point.

\(fn &optional POS)" nil nil)

;;;***

;;;### (autoloads nil nil ("parsebib-pkg.el") (21649 27510 960669
;;;;;;  660000))

;;;***

(provide 'parsebib-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; parsebib-autoloads.el ends here
