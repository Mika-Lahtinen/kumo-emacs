(when *is-windows*
    (set-face-attribute 'default nil 
        :font "Cascadia Mono" 
        :height 100
        :weight 'Regular)
    (setq locale-coding-system 'gb18030)
    (setq w32-unicode-filenames 'nil)
    (setq file-name-coding-system 'gb18030)
        )

(when *is-linux*
    (set-face-attribute 'default nil 
        :font "Dejavu" 
        :height 100
        :weight 'Regular))

;; Color theme
(use-package color-theme-modern
    :ensure t
    :config
    (load-theme 'aalto-light t))

;; Icons
(use-package nerd-icons)

(use-package nerd-icons-dired
    :after dired
    :hook
    (dired-mode . nerd-icons-dired-mode))

(provide 'base/display)