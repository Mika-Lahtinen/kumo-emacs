;; Initial display settings
(set-face-attribute 'default nil :height 100)
(global-hl-line-mode 1)

(use-package color-theme-modern
    :init
    (load-theme 'andreas t))

;; Mode line
(use-package smart-mode-line
    :ensure t
    :init
    (sml/setup))

(provide 'init-display)