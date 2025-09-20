(use-package markdown-mode
             :ensure nil
             :mode ("README\\.md\\'" . gfm-mode)
             :bind
             (:map markdown-mode-map
                   ("C-c C-e" . markdown-do)))

(provide 'init-lang-markdown)
