; first file to be loaded.
(setq backup-inhibited t)
(add-to-list 'load-path "~/.emacs.d/")
(load-file "~/.emacs.d/indent-options.el")
(load-file "~/.emacs.d/run-current-file.el")

(require 'color-theme)
(color-theme-initialize)
(color-theme-arjen)
