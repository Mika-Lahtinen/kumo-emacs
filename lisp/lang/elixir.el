(use-package elixir-mode
             :ensure t)

(use-package exunit
             :ensure t
             :hook (elixir-mode . exunit-mode))

(provide 'lang/elixir)
