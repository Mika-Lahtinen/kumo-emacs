;;; init-tools-common --- Common tools
;;; Commentary:
;; Common used packages by others, the following configuration wouldn't
;; be moved until I'm sure where could be suitable to move.
;;; Code:

(use-package exec-path-from-shell
  :ensure t
  :init
  (exec-path-from-shell-initialize))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(provide 'init-tools-common)
;;; init-tools-common.el ends here
