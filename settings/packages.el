; ----------------- packages -----------------

(use-package helm
  :ensure t
  :init
  (setq default-directory "~/Projects"
   helm-M-x-fuzzy-match t
   helm-mode-fuzzy-match t
   helm-buffers-fuzzy-matching t
   helm-recentf-fuzzy-match t
   helm-locate-fuzzy-match t
   helm-semantic-fuzzy-match t
   helm-imenu-fuzzy-match t
   helm-completion-in-region-fuzzy-match t
   helm-candidate-number-list 150
   helm-split-window-in-side-p t
   helm-move-to-line-cycle-in-source t
   helm-echo-input-in-header-line t
   helm-autoresize-max-height 0
   helm-autoresize-min-height 20)
   :config
   (helm-mode t))

; shows a windows with keybindins
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode t))

; nice way of defining keybindings
(use-package general
 :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode t))

(use-package projectile
  :ensure t
  :init
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (setq projectile-project-search-path '("~/Projects/fera" "~/Projects/smile" "~/Projects/labs"))
  :config
  (projectile-global-mode))

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

; treemacs is waaay better than neotree
(use-package treemacs
  :ensure t
  :config
  (treemacs-follow-mode t))

(use-package treemacs-evil
  :after treemacs evil
  :ensure t)

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

; workspaces
(use-package persp-mode
  :ensure t
  :config
  (persp-mode t))

; give numbers to windows
(use-package winum
  :ensure t
  :config
  (winum-mode t))

; spacemacs-like mode line
(use-package spaceline
  :ensure t
  :init
  (setq spaceline-minor-modes-p nil)
  (setq spaceline-buffer-size-p nil)
  (setq spaceline-buffer-modified-p nil)
  (setq spaceline-version-control-p nil)
  (setq spaceline-buffer-encoding-abbrev-p nil)
  (setq spaceline-workspace-numbers-unicode t)
  (setq spaceline-window-numbers-unicode t)
  :config
  (spaceline-spacemacs-theme)
  )

;; save recent files to switch faster
(use-package recentf
  :ensure t
  :config
  (recentf-mode t))
