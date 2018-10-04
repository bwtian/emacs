;;; helm-rubygems-org-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "helm-rubygems-org" "helm-rubygems-org.el"
;;;;;;  (23476 43600 998637 505000))
;;; Generated autoloads from helm-rubygems-org.el

(defvar helm-rubygems-org-search-source '((name . "Rubygems.org") (candidates . helm-rubygems-org-search) (volatile) (delayed) (requires-pattern . 2) (action ("Copy Gemfile require" . helm-rubygems-org-candidate-to-kill-ring) ("View Description" . helm-rubygems-org-candidate-view) ("Browse source code project" . helm-rubygems-org-candidate-browse-to-source) ("Browse on rubygems.org" . helm-rubygems-org-candidate-browse-to-project))))

(autoload 'helm-rubygems-org "helm-rubygems-org" "\
List Rubygems.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-rubygems-org-autoloads.el ends here
