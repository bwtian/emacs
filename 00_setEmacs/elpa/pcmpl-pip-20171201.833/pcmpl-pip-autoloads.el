;;; pcmpl-pip-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "pcmpl-pip" "pcmpl-pip.el" (23477 47631 427997
;;;;;;  462000))
;;; Generated autoloads from pcmpl-pip.el

(autoload 'pcmpl-pip-clean-cache "pcmpl-pip" "\
Clean the pip cache file.

\(fn)" t nil)

(autoload 'pcmpl-pip-update-index "pcmpl-pip" "\
Update the current pip cache file.

\(fn)" t nil)

(autoload 'pcomplete/python "pcmpl-pip" "\


\(fn)" nil nil)

(autoload 'pcomplete/pip "pcmpl-pip" "\


\(fn)" nil nil)

(defalias 'pcomplete/pip2 'pcomplete/pip)

(defalias 'pcomplete/pip3 'pcomplete/pip)

(defalias 'pcomplete/python3 'pcomplete/python)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; pcmpl-pip-autoloads.el ends here
