;; Plugins before loading YAsnippets
(use-package external-completion
             :load-path "packages/external-completion"
             :init
             (require 'external-completion))

;; YASnippets settings
(use-package yasnippet
             :load-path "packages/yasnippet"
             :diminish
             :hook
             (prog-mode . yas-minor-mode)
             :config
             (yas-reload-all)
             (defun company-mode/backend-with-yas (backend)
               (if (and (listp backend) (member 'company-yasnippet backend))
                 backend
                 (append (if (consp backend) backend (list backend))
                         '(:with company-yasnippet))))
             (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
             ;; unbind <TAB> completion
             (define-key yas-minor-mode-map [(tab)]        nil)
             (define-key yas-minor-mode-map (kbd "TAB")    nil)
             (define-key yas-minor-mode-map (kbd "<tab>")  nil)
             :bind
             (:map yas-minor-mode-map
                   ("S-<tab>" . yas-expand))
             )

(use-package yasnippet-snippets
             :load-path "packages/yasnippet-snippets"
             :after yasnippet
             :init
             (require 'yasnippet-snippets))

(provide 'tools/snippets)