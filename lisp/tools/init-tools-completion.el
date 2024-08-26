;;; completion.el --- Configurations for auto completing.
; -*- lexical binding: t -*-
;;; Commentary:
;; All the configurations for auto completion.
;; Currently we are using the following plugins:
;; vertico, orderless, consult, embark, company, marginalia
;; Additional plugins:
;; which-key, keycast
;;; Code:

(use-package ivy
  :load-path "packages/swiper"
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-height 10)
  (setq ivy-wrap t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-re-builders-alist
        '((t . ivy--regex-ignore-order))))

(provide 'init-tools-completion)
;;; completion.el ends here.
