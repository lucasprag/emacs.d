;; ----------------- keybindings -----------------

(defun reload-emacs-config ()
  "Reload emacs configs"
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(use-package general
 :ensure t
 :config (general-define-key
 :states '(normal visual insert emacs)
 :prefix "SPC"
 :non-normal-prefix "M-SPC"

 ;; "/"   '(counsel-rg :which-key "ripgrep") ; You'll need counsel package for this
 "SPC" '(helm-M-x :which-key "M-x")

 ;; Apps
 "a"  '(:which-key "apps")
 "ae" '(reload-emacs-config :which-key "reload emacs configs")

 ;; Buffers
 "b"  '(:which-key "buffers")
 "bb" '(helm-projectile-switch-to-buffer :which-key "buffers list")
 "bk" '(kill-current-buffer :which-key "kill")
 "bp" '(switch-to-prev-buffer :which-key "prev")
 "bn" '(switch-to-next-buffer :which-key "next")
 "ba" '(crux-kill-other-buffers :which-key "kill others")

 ;; Files
 "f"  '(:which-key "files")
 "ff" '(find-file :which-key "find files")
 "fs" '(save-buffer :which-key "save file")
 "fr" '(crux-rename-file-and-buffer :which-key "rename")
 "fd" '(crux-delete-file-and-buffer :which-key "delete")

 ;; Project
 "p"  '(:which-key "projects")
 "pp" '(helm-projectile-switch-project :which-key "switch project")
 "pf" '(helm-projectile-find-file :which-key "find file")
 "pr" '(helm-projectile-recentf :which-key "recent")
 "ps" '(helm-projectile-ag :which-key "search")
 "pt" '(neotree-toggle :which-key "neotree")

 ;; Terminal
 "t"  '(:which-key "terminal")
 "te" '(eshell :which-key "open eshell")
 "to" '(ansi-term :which-key "open zsh")

 ;; Window
 "w"  '(:which-key "windows")
 "w\\" '(split-window-right :which-key "split right")
 "w-" '(split-window-below :which-key "split bottom")
 "wk" '(delete-window :which-key "delete window")

 ;; Layout
 "l"  '(:which-key "layout")
 "ln" '(eyebrowse-create-window-config :which-key "new")
 "ll" '(persp-next :which-key "next")
 "lh" '(persp-prev :which-key "prev")
 "lk" '(persp-kill :which-key "kill")
 "lr" '(persp-rename :which-key "rename")
 "ls" '(persp-switch :which-key "switch")
 "lL" '(persp-switch-last :which-key "last")
))

;; move between workspaces using ALT-h/l
(global-set-key (kbd "M-h") 'eyebrowse-prev-window-config)
(global-set-key (kbd "M-l") 'eyebrowse-next-window-config)

;; move between windows using CTRL-h/j/k/l
(global-set-key (kbd "C-l") 'windmove-right)
(global-set-key (kbd "C-h") 'windmove-left)
(global-set-key (kbd "C-k") 'windmove-up)
;(global-set-key (kbd "C-j") 'windmove-down) ; WHY THIS DOESN'T WORK?

(defun hack-to-bind-move-down ()
  "Hack to bind C-j to windmove-down"
  (interactive)
  (local-set-key (kbd "C-j") 'windmove-down)
 )

(add-hook 'emacs-startup-hook 'hack-to-bind-move-down)
(add-hook 'change-major-mode-hook 'hack-to-bind-move-down)

;; save file using CTRL-s
(global-set-key (kbd "C-s") 'save-buffer)

;; find files in project using CTRL-p
(global-set-key (kbd "C-p") 'helm-projectile-find-file)

