(use-package rust-mode
    :ensure t)

(use-package rustic
    :ensure t
    :after (rust-mode)
    :hook
    (rustic-mode . eglot-ensure)
    :config
    (setq rustic-format-on-save t)
    (setq rustic-lsp-client 'eglot)
    :custom
    (rustic-analyzer-command '("rustup" "run" "stable" "rust-analyzer")))

(provide 'init-lang-rust)
