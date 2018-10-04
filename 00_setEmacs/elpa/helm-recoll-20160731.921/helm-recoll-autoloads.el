;;; helm-recoll-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "helm-recoll" "helm-recoll.el" (23476 43611
;;;;;;  921157 521000))
;;; Generated autoloads from helm-recoll.el

(autoload 'helm-recoll-create-source "helm-recoll" "\
Create helm source and associated functions for recoll search results.
The first argument NAME is a string.  Define a source variable
named `helm-source-recoll-NAME' and a command named
`helm-recoll-NAME'.  CONFDIR is the path to the config directory
which recoll should use.

\(fn NAME CONFDIR)" nil nil)

(autoload 'helm-recoll "helm-recoll" "\
Select recoll sources for helm.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-recoll-autoloads.el ends here
