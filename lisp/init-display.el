;; Initial display settings
(when *is-windows*
    (set-face-attribute 'default nil 
        :font "Cascadia Mono" 
        :height 100
        :weight 'Regular))
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