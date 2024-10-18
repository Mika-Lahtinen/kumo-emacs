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
    :ensure t)
(use-package ivy
    :ensure t
    :init
    (ivy-mode)
    :config
    (setq ivy-use-virtual-buffers t
          ivy-count-format "(%d/%d) "
          enable-recursive-minibuffers t)
    )
(use-package counsel
    :ensure t)

;;; Company
(use-package company
    :ensure t)

(provide 'init-tools-completion)
;;; completion.el ends here.
