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
    (add-hook 'before-save-hook #'eglot-code-action-organize-imports nil t)

    (set (make-local-variable 'company-backends)
         '(
           (company-capf company-yasnippet)
           (company-dabbrev-code company-dabbrev)
           )
         ))
  (add-hook 'eglot-managed-mode-hook 'private-eglot-hook)
  )

(use-package eldoc-box
  :ensure t
  :config
  (add-hook 'eglot-managed-mode-hook 'eldoc-box-hover-hook)
  )

(define-key eglot-mode-map (kbd "M-.") 'xref-find-definitions)
(define-key eglot-mode-map (kbd "M-,") 'xref-pop-marker-stack)
(define-key eglot-mode-map (kbd "C-c C-d") 'eldoc)
(define-key eglot-mode-map (kbd "C-c C-r") 'eglot-rename)
(define-key eglot-mode-map (kbd "C-c C-a") 'eglot-code-actions)
(define-key eglot-mode-map (kbd "C-c C-f") 'eglot-format-buffer)
(define-key eglot-mode-map (kbd "C-c C-o") 'eglot-code-action-organize-imports)

(provide 'init-tools-lsp)
;;; init-tools-lsp.el ends here.
