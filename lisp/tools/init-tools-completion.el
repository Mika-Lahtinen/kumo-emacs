;;; init-tools-completion.el --- Configurations for auto completing.
; -*- lexical binding: t -*-
;;; Commentary:
;; All the configurations for auto completion.
;; Currently we are using the following plugins:
;; Corfu, Embark, Marginalia, Orderless, company
;; Additional plugins:
;; which-key, keycast
;;; Code:

;;; Corfu, Embark, Marginalia, Orderless
(use-package corfu
             :ensure nil
             :load-path (plugin-load "corfu")
             )
(use-package embark)
(use-package marginalia)
(use-package orderless)
;;; Company
(use-package company
             :ensure nil
             :load-path (plugin-load "company")
             :hook
             (after-init . global-company-mode)
             :config
             (setq company-idle-delay 0.3
                   company-minimum-prefix-length 2
                   company-show-numbers t
                   company-selection-wrap-around t
                   company-tooltip-align-annotations t)
             )

(provide 'init-tools-completion)
;;; init-tools-completion.el ends here.
