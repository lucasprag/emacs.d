;; ----------------- keybindings -----------------

(defun reload-emacs-config ()
  "Reload emacs configs"
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(general-define-key
  :states '(normal visual insert emacs)
  :prefix "SPC"
  :non-normal-prefix "M-SPC"

  ;; "/"   '(counsel-rg :which-key "ripgrep") ; You'll need counsel package for this
  "SPC" '(helm-M-x :which-key "M-x")

  ;; buffers
  "b"  '(:which-key "buffers")
  "bb" '(helm-projectile-switch-to-buffer :which-key "buffers list")
  "bd" '(kill-current-buffer :which-key "delete")
  "bp" '(switch-to-prev-buffer :which-key "prev")
  "bn" '(switch-to-next-buffer :which-key "next")
  "ba" '(crux-kill-other-buffers :which-key "kill others")

  ;; code
  "c"  '(:which-key "code")
  "cc" '(comment-or-uncomment-region :which-key "comment")
  "cs" '(delete-trailing-whitespace :which-key "spaces")

  ;; "j"  '(:which-key "jump")

  ;; files
  "f"  '(:which-key "files")
  "fr" '(helm-recentf :which-key "recent")
  "ff" '(find-file :which-key "find files")

  "fs" '(save-buffer :which-key "save file")
  "fm" '(crux-rename-file-and-buffer :which-key "rename")
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
  ;; "T"  '(:which-key "toggles")

  ;; window
  "w"  '(:which-key "windows")
  "w\\" '(split-window-right :which-key "split right")
  "w-" '(split-window-below :which-key "split bottom")
  "wd" '(delete-window :which-key "delete")
)

;; keybindings only on normal mode
(general-define-key
  :states '(normal)
  "C-s" 'save-buffer
  "s-s" 'save-buffer
  "C-q" 'delete-window
  "C-a" 'save-buffers-kill-emacs

  ;; move between windows using CTRL-h/j/k/l
  "M-l" 'windmove-right
  "M-h" 'windmove-left
  "M-k" 'windmove-up
  "M-j" 'windmove-down

  ;; switch buffers
  ";" 'helm-projectile-switch-to-buffer

  ;; find files in project using command+p
  "s-p" 'helm-projectile-find-file
)
