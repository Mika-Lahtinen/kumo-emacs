(use-package rustic
             :ensure t
             :defer t
             :config
             (progn
               (setq rustic-lsp-client 'eglot)
               (setq rustic-format-on-save t)
               ))

(use-package rust-playground
             :ensure t)

(provide 'lang/rust)
