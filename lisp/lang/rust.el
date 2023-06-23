(use-package rustic
    :load-path "plugin/rustic"
    :defer t
    :config
    (progn
        (setq rustic-lsp-client 'eglot)
        (setq rustic-format-on-save t)
        ))

(use-package rust-playground)

(provide 'lang/rust)