(use-package elixir-mode
             :load-path "packages/elixir-mode"
             :config
             (require 'elixir-mode))

(use-package exunit
             :load-path "packages/exunit"
             :hook (elixir-mode . exunit-mode))

(provide 'lang/elixir)
