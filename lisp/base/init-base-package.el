;;; base-package.el: A collection for core packages.
;;; Packages as base for other packages, which are the core dependencies.

(use-package winner-mode
    :ensure nil
    :hook (after-init . winner-mode))
    
(provide 'init-base-package)