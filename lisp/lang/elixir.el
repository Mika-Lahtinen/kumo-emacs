(use-package elixir-mode
    :load-path "packages/elixir-mode"
    :autoload (elixir-mode)
    :mode "\\.elixir2\\'"
    :hook (elixir-mode . eglot-ensure)
    )

(use-package exunit
    :load-path "packages/exunit.el"
    :hook (elixir-mode . exunit-mode))
    
(provide 'lang/elixir)