; first file to be loaded.

; disable backup ~ files
(setq-default backup-inhibited t)

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

; indentation options
(setq-default indent-tabs-mode nil)
(setq-default c-indent-level 2)
(setq-default js-indent-level 2)

; load other files
; routine to compile or run when F7 is pressed
(load-file "~/.emacs.d/run-current-file.el")

; enable ctrl+pgdn for horizontal scrolling
(put 'scroll-left 'disabled nil)
