(use-package flymake
  :ensure t
  :config
  (setq flymake-fringe-indicator-position 'right-fringe
	flymake-no-changes-timeout nil)

  (use-package flymake-cursor
    :config
    (global-flymake-mode))

  )

(provide 'init-tools-checkers)
