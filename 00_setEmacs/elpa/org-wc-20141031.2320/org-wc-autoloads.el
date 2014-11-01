;;; org-wc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (org-wc-remove-overlays org-wc-display org-wc-count-subtrees
;;;;;;  org-word-count) "org-wc" "org-wc.el" (21588 55474 382955
;;;;;;  0))
;;; Generated autoloads from org-wc.el

(autoload 'org-word-count "org-wc" "\
Report the number of words in the Org mode buffer or selected region.

\(fn BEG END)" t nil)

(autoload 'org-wc-count-subtrees "org-wc" "\
Count words in each subtree, putting result as the property :org-wc on that heading.

\(fn)" t nil)

(autoload 'org-wc-display "org-wc" "\
Show subtree word counts in the entire buffer.
With prefix argument, only show the total wordcount for the buffer or region
in the echo area.

Use \\[org-wc-remove-overlays] to remove the subtree times.

Ignores: heading lines,
         blocks,
         comments,
         drawers.
LaTeX macros are counted as 1 word.

\(fn BEG END TOTAL-ONLY)" t nil)

(autoload 'org-wc-remove-overlays "org-wc" "\
Remove the occur highlights from the buffer.
BEG and END are ignored.  If NOREMOVE is nil, remove this function
from the `before-change-functions' in the current buffer.

\(fn &optional BEG END NOREMOVE)" t nil)

;;;***

;;;### (autoloads nil nil ("org-wc-pkg.el") (21588 55474 386637 898000))

;;;***

(provide 'org-wc-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-wc-autoloads.el ends here
