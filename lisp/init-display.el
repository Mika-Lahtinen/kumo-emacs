;; Initial display settings
(when *is-windows*
    (set-face-attribute 'default nil 
        :font "Cascadia Mono" 
        :height 100
        :weight 'Regular))
(global-hl-line-mode 1)

(use-package diminish
    :load-path "plugin/diminish")

(use-package color-theme-modern
    :load-path "plugin/replace-colortheme"
    :ensure t
    :init
    (add-to-list 'custom-theme-load-path
            (file-name-as-directory 
             (expand-file-name "plugin/replace-colortheme" user-emacs-directory)))
    (load-theme 'andreas t))

;; Mode line
(use-package smart-mode-line
    :load-path "plugin/smart-mode-line"
    :ensure t
    :init
    (progn 
        (setq sml/theme 'light)
        (sml/setup))
    )

(provide 'init-display)