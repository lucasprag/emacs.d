;; ----------------- preferences -----------------
;; minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

;; show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; show column number on mode line
(column-number-mode 1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; stop creating backup~ files
(setq make-backup-files nil)

;; stop creating #autosave# files
(setq auto-save-default nil)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; don't use tabs to indent
(setq-default indent-tabs-mode nil)

;; but maintain correct appearance
(setq-default tab-width 2)

;; newline at end of file
(setq require-final-newline t)

; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

; start emacs maximized
;(add-to-list 'default-frame-alist '(fullscreen . maximized))

; enable line numbers
(global-linum-mode t)
