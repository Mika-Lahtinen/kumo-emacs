;;; init-tools-checkers.el --- Checkers settings
(use-package flymake
  :ensure t
  :hook
  (prog-mode . global-flymake-mode))

(provide 'init-tools-checkers)
;;; init-tools-checkers.el ends here.
