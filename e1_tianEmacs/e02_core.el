
(setq default-directory "~/SparkleShare/")

(setq backup-by-copying t) ;automatically backup
;; place all auto-saves and backups in the directory pointed to by temporary-file-directory
;; (e.g., /tmp; C:/Temp/ on Windows).
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq kept-new-versions 5) ;Keep 6 newest Bankup files
(setq kept-old-versions 5) ;Keep 6 oldest Bankup files
(setq delete-old-versions t) ;Delete old versions
(setq delete-auto-save-files t)
(setq version-control t) ; Multitime backup
(setq kill-ring-max 200)
(setq delete-auto-save-files t) ; Delete Auto-save file When quit
(setq x-select-enable-clipboard t) ;; enable Copy from outside
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files

(setq vc-follow-symlinks t) ;; Avoid Yes No to Symbol link to Git-Control ed source file
(setq auto-revert-check-vc-info t)
(setq auto-revert-interval 1)
(add-hook 'find-file-hook                                                                                                                                                          
          '(lambda ()                                                                                                                                                              
             (when                                                                                                                                                                 
                 (and buffer-file-name                                                                                                                                             
                      (vc-backend buffer-file-name))                                                                                                                               
               (auto-revert-mode))))
