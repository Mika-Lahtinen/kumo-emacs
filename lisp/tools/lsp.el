;; Eglot settings
(use-package eglot
             :load-path "packages/eglot"
             :hook (prog-mode . eglot-ensure)
             :bind ("C-c e f" . eglot-format))

(provide 'tools/lsp)
