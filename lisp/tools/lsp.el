(use-package flymake
  :hook (prog-mode . flymake-mode)
  :config
  (global-set-key (kbd "M-n") #'flymake-goto-next-error)
  (global-set-key (kbd "M-p") #'flymake-goto-prev-error))

;; Eglot settings
(use-package eglot
             :load-path "packages/eglot"
             :hook (prog-mode . eglot-ensure)
             :bind ("C-c e f" . eglot-format))

(provide 'tools/lsp)
