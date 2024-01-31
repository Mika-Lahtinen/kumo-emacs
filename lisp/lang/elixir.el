(use-package elixir-mode
    :load-path "packages/elixir-mode"
    :mode "\\.elixir2\\'"
    :hook (elixir-mode . (prog-mode eglot-ensure))
    :config
    (require 'elixir-mode)
    )

(use-package exunit
    :load-path "packages/exunit.el"
    :hook (elixir-mode . exunit-mode))
    
(provide 'lang/elixir)