(use-package elixir-mode
    :load-path "packages/elixir-mode"
    :mode "\\.elixir2\\'"
    )

(use-package exunit
    :load-path "packages/exunit.el"
    :hook (elixir-mode . exunit-mode))
    
(provide 'lang/elixir)