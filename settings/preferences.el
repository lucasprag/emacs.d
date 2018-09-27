;; ----------------- UI -----------------
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

;; ----------------- settings -----------------

(setq ring-bell-function 'ignore) ; disable the annoying bell ring
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(fset 'yes-or-no-p 'y-or-n-p) ; enable y/n answers

(setq-default indent-tabs-mode nil) ; don't use tabs to indent
(setq-default tab-width 2) ; but maintain correct appearance

(setq require-final-newline t) ; Newline at end of file
(global-auto-revert-mode t) ; revert buffers automatically when underlying files are changed externally

; start emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))
