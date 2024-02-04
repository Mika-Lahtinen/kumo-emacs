(use-package rust-mode
             :load-path "packages/rust-mode"
             :mode "\\.rs\\'"
             :hook ((rust-mode . eglot-ensure))
             :config
             (progn
               (setq rust-format-on-save t)
               ))

(use-package rustic
             :load-path "packages/rustic"
             :config
             (progn
               (setq rustic-lsp-client 'eglot)
               (setq rustic-format-on-save t)
               ))

(use-package cargo-mode
             :load-path "packages/cargo-mode"
             :hook ((rust-mode . cargo-minor-mode)))

(provide 'lang/rust)
