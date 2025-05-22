;;; init-tools-lsp --- LSP Settings

(use-package eglot
  :ensure t
  :config
  ;; Enroll LSPs
  (add-to-list 'eglot-server-programs '(c-mode . ("clangd")))
  (add-to-list 'eglot-server-programs '(c++-mode . ("clangd")))

  ;; Eglot basic settings
  (setq eglot-autoshutdown t
	eglot-connect-timeout 30
	eglot-sync-connect nil
	eglot-ignored-server-capabilities '(:documentFormattingProvider
					    :documentRangeFormattingProvider))

  ;; Private hook for eglot
  (defun private-eglot-hook ()
    (add-hook 'before-save-hook #'eglot-format-buffer nil t)
    (add-hook 'before-save-hook #'eglot-code-action-organize-imports nil t))
  (add-hook 'eglot-managed-mode-hook 'private-eglot-hook)
  )

(use-package company-eglot
  :ensure t
  :config
  (with-eval-after-load 'eglot
    (add-to-list 'company-backends 'company-eglot)))


(provide 'init-tools-lsp)
;;; init-tools-lsp.el ends here.
