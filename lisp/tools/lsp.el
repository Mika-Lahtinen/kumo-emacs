(use-package flymake
             :hook (prog-mode . flymake-mode)
             :config
             (setq flymake-no-changes-timeout nil)
             (global-set-key (kbd "M-n") #'flymake-goto-next-error)
             (global-set-key (kbd "M-p") #'flymake-goto-prev-error))

;; Eglot settings
;; (use-package eglot
;;              :load-path "packages/eglot"
;;              :hook (prog-mode . eglot-ensure)
;;              :bind ("C-c e f" . eglot-format))

(use-package lsp-bridge
    :load-path "packages/lsp-bridge"
    :hook (after-init . global-lsp-bridge-mode)
    :config
    (setq lsp-bridge-enable-which-key-integration t))
    

(provide 'tools/lsp)
