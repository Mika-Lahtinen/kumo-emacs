(use-package elixir-mode
             :load-path "packages/elixir-mode"
             :bind (:map elixir-mode-map
                         ("C-c C-f" . elixir-format)))

(require 'elixir-mode)

(use-package exunit
             :load-path "packages/exunit"
             :hook (elixir-mode . exunit-mode))

(use-package mix
             :load-path "packages/mix"
             :hook (elixir-mode . mix-minor-mode)
             )

(require 'mix)

(provide 'lang/elixir)
