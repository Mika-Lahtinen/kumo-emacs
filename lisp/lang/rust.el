(use-package rustic
    :defer t
    :config
    (rustic-lsp-client 'eglot)
    (rustic-format-on-save t))

(use-package rust-playground)

(provide 'lang/rust)