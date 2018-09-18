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
 "pf" '(helm-projectile-ag :which-key "find files")
 "pt" '(neotree-toggle :which-key "neotree toggle")

 ;; Files
 "f"  '(:which-key "files")
 "ff"  '(find-file :which-key "find files")
 "fs"  '(save-buffer :which-key "save file")

 ;; Buffers
 "b"  '(:which-key "buffers")
 "bb"  '(helm-buffers-list :which-key "buffers list")

 ;; Window
 "w"  '(:which-key "windows")
 "wl"  '(windmove-right :which-key "move right")
 "wh"  '(windmove-left :which-key "move left")
 "wk"  '(windmove-up :which-key "move up")
 "wj"  '(windmove-down :which-key "move bottom")
 "w/"  '(split-window-right :which-key "split right")
 "w-"  '(split-window-below :which-key "split bottom")
 "wx"  '(delete-window :which-key "delete window")

 ;; Terminal
 "t"  '(:which-key "terminals")
 "to"  '(ansi-term :which-key "open terminal")
))
