;; ----------------- keybindings -----------------

(use-package general
 :ensure t
 :config (general-define-key
 :states '(normal visual insert emacs)
 :prefix "SPC"
 :non-normal-prefix "M-SPC"

 ;; "/"   '(counsel-rg :which-key "ripgrep") ; You'll need counsel package for this
 "TAB" '(switch-to-prev-buffer :which-key "previous buffer")
 "SPC" '(helm-M-x :which-key "M-x")

 ;; Project
 "p"  '(:which-key "projects")
 "pp" '(helm-projectile :which-key "find project")
 "pf" '(helm-projectile-ag :which-key "find file")
 "pt" '(neotree-toggle :which-key "neotree")

 ;; Files
 "f"  '(:which-key "files")
 "ff" '(find-file :which-key "find files")
 "fs" '(save-buffer :which-key "save file")

 ;; Buffers
 "b"  '(:which-key "buffers")
 "bb" '(helm-buffers-list :which-key "buffers list")
 "bk" '(kill-current-buffer :which-key "kill current bugffer")

 ;; Window
 "w"  '(:which-key "windows")
 "w\\" '(split-window-right :which-key "split right")
 "w-" '(split-window-below :which-key "split bottom")
 "wk" '(delete-window :which-key "delete window")

 ;; Workspaces
 "s"  '(:which-key "workspaces")
 "sn" '(eyebrowse-create-window-config :which-key "new")
 "sl" '(eyebrowse-next-window-config :which-key "next")
 "sh" '(eyebrowse-prev-window-config :which-key "prev")
 "sk" '(eyebrowse-close-window-config :which-key "kill")
 "sr" '(eyebrowse-rename-window-config :which-key "rename")
 "ss" '(eyebrowse-switch-window-config :which-key "switch interactively")

 ;; Terminal
 "t"  '(:which-key "terminal")
 "te" '(eshell :which-key "open eshell")
 "to" '(ansi-term :which-key "open zsh")
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
