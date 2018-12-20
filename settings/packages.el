; ----------------- packages -----------------

(use-package helm
  :ensure t
  :init
  (setq default-directory "~/Projects/fera"
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
   (helm-mode 1))

(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode 1))

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; theme
(use-package planet-theme
  :ensure t
  :config
  (load-theme 'planet t))

(use-package projectile
  :ensure t
  :init
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (setq projectile-project-search-path '("~/Projects/fera" "~/Projects/labs"))
  :config
  (projectile-global-mode))

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

(use-package neotree
  :ensure t
  :init
  :config
  (setq neo-theme 'nerd)
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (add-hook 'neotree-mode-hook
    (lambda ()
      (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
      (define-key evil-normal-state-local-map (kbd "I") 'neotree-hidden-file-toggle)
      (define-key evil-normal-state-local-map (kbd "z") 'neotree-stretch-toggle)
      (define-key evil-normal-state-local-map (kbd "R") 'neotree-refresh)
      (define-key evil-normal-state-local-map (kbd "m") 'neotree-rename-node)
      (define-key evil-normal-state-local-map (kbd "c") 'neotree-create-node)
      (define-key evil-normal-state-local-map (kbd "d") 'neotree-delete-node)
      (define-key evil-normal-state-local-map (kbd "s") 'neotree-enter-vertical-split)
      (define-key evil-normal-state-local-map (kbd "S") 'neotree-enter-horizontal-split)
      (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter))))

;; eyebrowse, a tmux like behavior
;(use-package eyebrowse
; :ensure t
; :init
; (setq eyebrowse-new-workspace t)
; :config
; (eyebrowse-mode t))

(use-package perspective
  :ensure t
  :config
  (persp-mode))

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
  (setq powerline-default-separator nil)
  :config
  (spaceline-emacs-theme))

;; save recent files to switch faster
(use-package recentf
  :ensure t
  :config
  (recentf-mode +1))

(use-package dashboard
  :ensure t
  :init
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-items '((projects  . 5)
                          (recents . 10)))
  :config
  (dashboard-setup-startup-hook))
