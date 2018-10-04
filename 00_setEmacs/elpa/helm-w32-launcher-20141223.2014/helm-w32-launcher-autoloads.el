;;; helm-w32-launcher-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "helm-w32-launcher" "helm-w32-launcher.el"
;;;;;;  (23476 43569 283615 823000))
;;; Generated autoloads from helm-w32-launcher.el

(autoload 'helm-w32-launcher "helm-w32-launcher" "\
Launch a program as if from the Start Menu.
When `helm-w32-launcher-use-cache' is non-nil, this function caches
the Start Menu entries, use `helm-w32-launcher-flush-cache' to flush
the cache.

\(fn)" t nil)

(autoload 'helm-w32-launcher-elevated "helm-w32-launcher" "\
Launch a program as if from the Start Menu with elevated privileges.
When `helm-w32-launcher-use-cache' is non-nil, this function caches
the Start Menu entries, use `helm-w32-launcher-flush-cache' to flush
the cache.

\(fn)" t nil)

(autoload 'helm-w32-launcher-open-shortcut-directory "helm-w32-launcher" "\
Open the directory of the selected shortcut.
When `helm-w32-launcher-use-cache' is non-nil, this function caches
the Start Menu entries, use `helm-w32-launcher-flush-cache' to flush
the cache.

\(fn)" t nil)

(autoload 'helm-w32-launcher-open-shortcut-properties "helm-w32-launcher" "\
Open the properties of the selected shortcut.
When `helm-w32-launcher-use-cache' is non-nil, this function caches
the Start Menu entries, use `helm-w32-launcher-flush-cache' to flush
the cache.

\(fn)" t nil)

(autoload 'helm-w32-launcher-flush-cache "helm-w32-launcher" "\
Flush the internal `helm-w32-launcher' cache.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("helm-w32-launcher-pkg.el") (23476 43569
;;;;;;  297118 44000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-w32-launcher-autoloads.el ends here
