;;; helm-lib-babel-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "helm-lib-babel" "helm-lib-babel.el" (23476
;;;;;;  43708 73863 810000))
;;; Generated autoloads from helm-lib-babel.el

(autoload 'helm-lib-babel-insert "helm-lib-babel" "\
Helm function to insert a reference to an org source block function.

The available functions consist of all functions defined in the
library of babel (q.v. `org-babel-library-of-babel',
`org-babel-lob-ingest') as well as all the named source blocks
found in the current file.  The available actions include:

Insert a #+CALL: function.  The CALL function arguments are pre-filled
with the function's default arguments.

Insert a :post header argument for a source block

Insert an `org-sbe' form usually used in table functions.  Again,
the function default arguments are added as arguments to the
`org-sbe' call.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-lib-babel-autoloads.el ends here
