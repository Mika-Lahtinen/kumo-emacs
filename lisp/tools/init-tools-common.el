;; Common used packages by others, the following configuration wouldn't
;; be moved until I'm sure where could be suitable to move.

(use-package exec-path-from-shell
  :ensure t
  :init
  (exec-path-from-shell-initialize))

(provide 'init-tools-common)
