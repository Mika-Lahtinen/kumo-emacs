(use-package which-key
    :ensure t
    :config
    (progn
        (which-key-mode)
        (which-key-setup-side-window-bottom)))

(use-package keycast
    :ensure t
    :config
    (keycast-mode t))

(provide 'init-hint)
