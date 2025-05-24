;;; init-tools-checkers.el --- Checkers settings
(use-package flycheck
  :ensure t
  :hook
  (prog-mode . global-flycheck-mode))

(provide 'init-tools-checkers)
;;; init-tools-checkers.el ends here.
