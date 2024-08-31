;;; init-tools-company.el --- Configuration for Company package.
; -*- lexical binding: t -*-
;;; Commentary: 
;; Confugurations for Company package.
;;; Code:

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

(use-package company-quickhelp
    :ensure nil
    :load-path "packages/company-quickhelp/"
    :init
    (company-quickhelp-mode 1)
    (use-package pos-tip
        :ensure nil
        :load-path "packages/pos-tip/"))
        
(use-package company-box
    :ensure nil
    :load-path "packages/company-box"
    :hook
    (company-mode . company-box-mode))

(provide 'init-tools-company)