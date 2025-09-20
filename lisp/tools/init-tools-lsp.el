;;; init-tools-lsp --- LSP Settings
;;; Commentary:
;;; LSP settings.
;;; Code:
(use-package eglot
             :ensure nil
             :bind
             ("C-c e f" . eglot-format)
             :hook
             (prog-mode . eglot-ensure)
             :config
             ;; Enroll LSPs
             ;; (add-to-list 'eglot-server-programs '(c-mode . ("clangd")))
             ;; (add-to-list 'eglot-server-programs '(c++-mode . ("clangd")))

             ;; Eglot basic settings
             (setq eglot-autoshutdown t
                   eglot-connect-timeout 30
                   eglot-sync-connect nil)

             ;; Private hook for eglot
             (defun private-eglot-hook ()
               (add-hook 'before-save-hook #'eglot-format-buffer nil t)
               (add-hook 'before-save-hook #'eglot-code-action-organize-imports nil t)
              )
             (add-hook 'eglot-managed-mode-hook 'private-eglot-hook)
             (define-key eglot-mode-map (kbd "M-.") 'xref-find-definitions)
             (define-key eglot-mode-map (kbd "M-,") 'xref-pop-marker-stack)
             (define-key eglot-mode-map (kbd "C-c C-d") 'eldoc)
             (define-key eglot-mode-map (kbd "C-c C-r") 'eglot-rename)
             (define-key eglot-mode-map (kbd "C-c C-a") 'eglot-code-actions)
             (define-key eglot-mode-map (kbd "C-c C-f") 'eglot-format-buffer)
             (define-key eglot-mode-map (kbd "C-c C-o") 'eglot-code-action-organize-imports)
             )

(use-package eldoc-box
             :ensure nil
             :custom
             (eldoc-box-max-pixel-width 500)
             (eldoc-box-max-pixel-height 300)
             :config
             (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-mode t)
             )


(provide 'init-tools-lsp)
;;; init-tools-lsp.el ends here.
