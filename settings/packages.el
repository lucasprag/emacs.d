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
  (setq projectile-project-search-path '("~/Projects/fera" "~/Projects/smile" "~/Projects/maple-labs"))
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

(use-package treemacs-evil
  :after treemacs evil
  :ensure t)

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

; workspaces
(use-package persp-mode
  :ensure t
  :init
  :config
  (persp-mode t))

(use-package doom-themes
  :ensure t
  :config
  (load "doom-darkest-night-theme.el"))

(use-package doom-modeline
  :ensure t
  :config
  (setq doom-modeline-height 20)
  (setq doom-modeline-buffer-encoding nil)
  (setq doom-modeline-persp-name t)
  :hook (after-init . doom-modeline-mode))

; save recent files to switch faster
(use-package recentf
  :ensure t
  :config
  (recentf-mode t))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)))

(use-package css-mode
  :ensure nil
  :config (setq-default css-indent-offset 2))

(use-package scss-mode
  :ensure nil
  :preface
  (defun me/scss-set-comment-style ()
    (setq-local comment-end "")
    (setq-local comment-start "//"))
  :mode ("\\.sass\\'" "\\.scss\\'")
  :hook (scss-mode . me/scss-set-comment-style))
