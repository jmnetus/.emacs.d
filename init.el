; first file to be loaded.

; add .emacs.d to load-path
(add-to-list 'load-path "~/.emacs.d/")

; disable menu bar
(menu-bar-mode 0)

; load color themes
(require 'color-theme)
(color-theme-initialize)
(color-theme-comidia)

(load-file "~/.emacs.d/indent-options.el")
(load-file "~/.emacs.d/run-current-file.el")
