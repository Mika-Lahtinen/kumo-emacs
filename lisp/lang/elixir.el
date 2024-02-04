(use-package elixir-mode
             :load-path "packages/elixir-mode")

;; (add-to-list 'load-path
;;              (concat user-emacs-directory
;;                      (convert-standard-filename "packages/elixir-mode/")))
;; (require 'elixir-mode)

(use-package exunit
             :load-path "packages/exunit"
             :hook (elixir-mode . exunit-mode))

(provide 'lang/elixir)
