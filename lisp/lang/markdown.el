(use-package markdown-mode
    :load-path "plugin/markdown-mode"
    :ensure t
    :mode ("README\\.md\\'" . gfm-mode)
    :init (setq markdown-command "pandoc")
    :bind (:map markdown-mode-map
            ("C-c C-e" . markdown-do)))

(provide 'lang/markdown)