(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))
(require 'org)
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))
