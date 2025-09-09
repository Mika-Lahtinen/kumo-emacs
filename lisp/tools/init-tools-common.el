;;; init-tools-common --- Common tools
;;; Commentary:
;; Common used packages by others, the following configuration wouldn't
;; be moved until I'm sure where could be suitable to move.
;;; Code:

(use-package exec-path-from-shell
             :ensure nil
             :load-path (plugin-load "exec-path-from-shell")
             :init
             (when (memq window-system '(mac ns x))
               (exec-path-from-shell-initialize))
             )

(use-package which-key
             :ensure nil
             ;; :load-path (plugin-load "which-key")
             :init
             (which-key-mode))

(use-package keycast
             :ensure nil
             :load-path (plugin-load "keycast")
             :config
             (keycast-header-line-mode 1))

(use-package helpful
             :ensure nil
             :load-path (plugin-load "helpful")
             :bind
             (("C-h f" . #'helpful-callable)
              ("C-h v" . #'helpful-variable)
              ("C-h k" . #'helpful-key)
              ("C-h x" . #'helpful-command)
              ))
(provide 'init-tools-common)
;;; init-tools-common.el ends here
