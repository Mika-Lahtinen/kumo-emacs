(use-package evil
             :load-path "packages/evil"
             :init
             (setq evil-undo-system 'undo-tree)
             (setq evil-want-keybinding nil)
             (setq evil-want-integration t)
             (require 'evil)
             :custom
             (evil-set-undo-system 'undo-tree)
             :hook
             (fundamental-mode . evil-local-mode)
             (prog-mode . evil-local-mode)
             (text-mode . evil-local-mode)
             )

(use-package evil-collection
             :load-path "packages/evil-collection"
             :after evil
             :config
             (evil-collection-init))

(use-package evil-visualstar
             :load-path "packages/evil-visualstar"
             :after evil
             :config
             (global-evil-visualstar-mode 1))

(use-package evil-surround
             :load-path "packages/evil-surround"
             :after evil
             :config
             (global-evil-surround-mode 1))

(provide 'tools/evil)
