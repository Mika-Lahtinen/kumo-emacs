;; Common used packages by others, the following configuration wouldn't 
;; be moved until I'm sure where could be suitable to move.

(use-package restart-emacs
  :load-path "packages/restart-emacs"
  :init 
  (require 'restart-emacs))

(use-package exec-path-from-shell
    :load-path "packages/exec-path-from-shell"
    :config
    :when (or (memq window-system '(mac ns x))
            (unless *is-windows*
              (daemonp)))
    :config (exec-path-from-shell-initialize))

(use-package language-id
  :load-path "packages/language-id")

(use-package inheritenv
  :load-path "packages/inheritenv")

;; great for programmers
(use-package format-all
  :load-path "packages/format-all"
  ;; 开启保存时自动格式化
  :hook (prog-mode . format-all-mode)
  ;; 绑定一个手动格式化的快捷键
  :bind ("C-c f" . #'format-all-region-or-buffer))

(use-package iedit
  :load-path "packages/iedit")

(use-package undo-tree
  :load-path "packages/undo-tree"
  :config
  (global-undo-tree-mode))

(use-package dash
  :load-path "packages/dash.el")

(use-package frame-local
  :load-path "packages/frame-local")

(provide 'tools/common)
