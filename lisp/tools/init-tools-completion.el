;;; completion.el --- Configurations for auto completing.
; -*- lexical binding: t -*-
;;; Commentary:
;; All the configurations for auto completion.
;; Currently we are using the following plugins:
;; ivy, swiper, counsel, company
;; Additional plugins:
;; which-key, keycast
;;; Code:

;;; Ivy + Counsel + Swiper
(use-package counsel
  :ensure nil
  :load-path "packages/swiper/"
  :hook
  (after-init . counsel-mode))

(use-package ivy
  :ensure nil
  :load-path "packages/swiper/"
  :hook
  (after-init . ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-height 10)
  (setq ivy-wrap t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-re-builders-alist
        '((t . ivy--regex-ignore-order))))

(use-package swiper
  :ensure nil
  :load-path "packages/swiper/")

;;; Company: For auto completion when coding.
(use-package company
  :ensure nil
  :load-path "packages/company/"
  :hook
  (after-init . global-company-mode)
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-selection-wrap-around t)
  (setq company-tooltip-limit 10)
  (setq company-tooltip-align-annotations t)
  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-ignore-case nil))

;;; Wgrep
(use-package wgrep
  :ensure nil
  :load-path "packages/wgrep/")

;;; Which-key: For displaying keybindings.



(provide 'init-tools-completion)
;;; completion.el ends here.
