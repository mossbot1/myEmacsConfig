;;disable menus for larger screen
(menu-bar-mode -1) 
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-window-scroll-bars (minibuffer-window) nil nil)

;;disable cursor blink and startup screen
(blink-cursor-mode 0)
(setq inhibit-startup-screen t)

;;Column Mode. Line nums, time.
(global-linum-mode 1)
(setq column-number-mode t)
(display-time-mode 1)

;;no backups, always y or n
(setq make-backup-files nil) 
(defalias 'yes-or-no-p 'y-or-n-p) ;diguise yes or no to y or n

;;title and better scrolling
(setq frame-title-format '((:eval (projectile-project-name))))
(setq scroll-conservatively 100)

;;theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(package-selected-packages
   (quote
    (org use-package org-bullets org-babel-eval-in-repl))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;MELPA
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t)) 

;;setting home page, change if needed
(setq initial-buffer-choice "~/home.org")
