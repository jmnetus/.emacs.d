; first file to be loaded.

; disable vc backends that are crashing some emacs versions - I use commandline anyway
(setq vc-handled-backends ())

; disable backup ~ files
(setq-default backup-inhibited t)

; add .emacs.d to load-path
(add-to-list 'load-path "~/.emacs.d/lisp")

; disable menu bar
(menu-bar-mode 0)

; load custom modes
(autoload 'csharp-mode "~/.emacs.d/lisp/modes/csharp-mode.el")
(autoload 'markdown-mode "~/.emacs.d/lisp/modes/markdown-mode.el")
(autoload 'yaml-mode "~/.emacs.d/lisp/modes/yaml-mode.el")
(setq auto-mode-alist (cons '("\\.cs" . csharp-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.yaml" . yaml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.yml" . yaml-mode) auto-mode-alist))

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
(load-file "~/.emacs.d/lisp/run-current-file.el")

; enable ctrl+pgdn for horizontal scrolling
(put 'scroll-left 'disabled nil)
