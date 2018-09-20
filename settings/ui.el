;; ----------------- UI -----------------
;; minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")
;; theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

;; show matching parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; show column number on mode line
(column-number-mode 1)

