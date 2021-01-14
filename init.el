;; ===================================
;; custom variables &c
;; ===================================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org-bullets which-key yasnippet-snippets magit find-file-in-project yaml-mode web-mode use-package try js2-mode exec-path-from-shell epresent emmet-mode elpy dracula-theme better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ====================================
;; from ZAMANSKY
;; ===================================

;; to have larger working-space
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

(setq inhibit-startup-message t)

(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package better-defaults
  :ensure t
  :config (require 'better-defaults))

(use-package elpy
  :ensure t
  :init
  (elpy-enable))

(use-package dracula-theme
  :ensure t
  :config (load-theme 'dracula t))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))

;;(use-package org-bullets
;;  :ensure t
;;  :config
;;  (add-hook 'org-mode-hook #'org-bullets-mode))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(defalias 'list-buffers 'ibuffer)

(windmove-default-keybindings)

(use-package ox-reveal
  :ensure t)

