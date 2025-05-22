;;; completion.el --- Configurations for auto completing.
; -*- lexical binding: t -*-
;;; Commentary:
;; All the configurations for auto completion.
;; Currently we are using the following plugins:
;; ivy, counsel, swiper, company
;; Additional plugins:
;; which-key, keycast
;;; Code:

;;; Ivy, counsel and swiper
(use-package swiper
    :ensure t
    :bind
    (("C-s" . swiper-isearch))
    )
(use-package ivy
    :ensure t
    :init
    (ivy-mode)
    :bind
    (("C-c C-r" . ivy-resume))
    :config
    (setq ivy-use-virtual-buffers t
          ivy-count-format "(%d/%d)"
          enable-recursive-minibuffers t)
    )
(use-package counsel
    :ensure t
    :bind
    (("M-x" . counsel-M-x)
     ("C-x C-f" . counsel-find-file)
     ("C-c g" . counsel-git))
    )

;;; Company
(use-package company
    :ensure t
    :config
    (global-company-mode)
    (setq company-idle-delay 0.3
          company-minimum-prefix-length 2
	  company-show-numbers t
          company-selection-wrap-around t
          company-tooltip-align-annotations t)
    )

(provide 'init-tools-completion)
;;; completion.el ends here.
