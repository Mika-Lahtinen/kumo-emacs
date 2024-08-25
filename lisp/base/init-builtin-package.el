;;; init-builtin-package.el: Configurations for builtin packages in Emacs.
;;; Code:

(use-package winner-mode
    :ensure nil
    :hook 
    (after-init . winner-mode))

(use-package savehist
    :ensure nil
    :init 
    (savehist-mode))

(use-package ido-mode
    :ensure nil
    :init
    (setq ido-enable-flex-matching t)
    (setq ido-everywhere t)
    (ido-mode 1))

(provide 'init-builtin-package)