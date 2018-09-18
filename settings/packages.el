;; ----------------- packages -----------------

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

(use-package projectile
  :ensure t
  :init
  ;; (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1))

(use-package helm-projectile
  :ensure t
  :config)

;; eyebrowse, a tmux like behavior
;;(use-package eyebrowse
;;  :ensure t
;;  :init
;;  (eyebrowse-mode t))

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
