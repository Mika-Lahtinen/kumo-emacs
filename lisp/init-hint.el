(use-package which-key
    :ensure t
    :custom (which-key-idle-delay 0.5)
    :config
    (progn
        (which-key-mode)
        (which-key-setup-side-window-bottom)))

(use-package keycast
    :ensure t
    :config
    (keycast-mode t))

(provide 'init-hint)
