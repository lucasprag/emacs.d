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

 ;; buffers
 "b"  '(:which-key "buffers")
 "bb" '(helm-projectile-switch-to-buffer :which-key "buffers list")
 "bk" '(kill-current-buffer :which-key "kill")
 "bp" '(switch-to-prev-buffer :which-key "prev")
 "bn" '(switch-to-next-buffer :which-key "next")
 "ba" '(crux-kill-other-buffers :which-key "kill others")

 ;"j"  '(:which-key "jump")

 ;; files
 "f"  '(:which-key "files")
 "ff" '(find-file :which-key "find files")
 "fs" '(save-buffer :which-key "save file")
 "fr" '(crux-rename-file-and-buffer :which-key "rename")
 "fd" '(crux-delete-file-and-buffer :which-key "delete")

 ;; project
 "p"  '(:which-key "projects")
 "pp" '(helm-projectile-switch-project :which-key "switch project")
 "pf" '(helm-projectile-find-file :which-key "find file")
 "pr" '(helm-projectile-recentf :which-key "recent")
 "ps" '(helm-projectile-ag :which-key "search")
 "pt" '(neotree-toggle :which-key "neotree")

 ;; emacs
 "e"  '(:which-key "emacs")
 "er" '(reload-emacs-config :which-key "reload configs")
 "eq" '(kill-emacs :which-key "quit")

 ;; toggles
 "T"  '(:which-key "toggles")

 ;; window
 "w"  '(:which-key "windows")
 "w\\" '(split-window-right :which-key "split right")
 "w-" '(split-window-below :which-key "split bottom")
 "wq" '(delete-window :which-key "quit")
))

;; move between windows using CTRL-h/j/k/l
(global-set-key (kbd "M-l") 'windmove-right)
(global-set-key (kbd "M-h") 'windmove-left)
(global-set-key (kbd "M-k") 'windmove-up)
(global-set-key (kbd "M-j") 'windmove-down)

;; save file using CTRL-s
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "C-q") 'delete-window)
(global-set-key (kbd "C-a") 'save-buffers-kill-emacs)

;; switch buffers
(global-set-key (kbd ";") 'helm-projectile-switch-to-buffer)


;; find files in project using command+p
(global-set-key (kbd "s-p") 'helm-projectile-find-file)


