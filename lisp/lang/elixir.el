(use-package elixir-mode
    :load-path "packages/elixir-mode"
    :mode "\\.elixir2\\'"
    :hook ((prog-mode . elixir-mode)
            (eglot-ensure . elixir-mode))
    :config
    (require 'elixir-mode)
    )

(use-package exunit
    :load-path "packages/exunit.el"
    :hook (elixir-mode . exunit-mode))
    
(provide 'lang/elixir)