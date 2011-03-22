; first file to be loaded.

; disable backup ~ files
(setq backup-inhibited t)

; add .emacs.d to load-path
(add-to-list 'load-path "~/.emacs.d/")

; disable menu bar
(menu-bar-mode 0)

; load color themes
(require 'color-theme)
(color-theme-initialize)
(color-theme-comidia)

; syntax highlighting on (for older emacs versions)
(global-font-lock-mode 1)

; load other files
(load-file "~/.emacs.d/indent-options.el")
(load-file "~/.emacs.d/run-current-file.el")
