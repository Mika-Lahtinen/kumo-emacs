;;; init-tools-completion.el --- Configurations for auto completing.
; -*- lexical binding: t -*-
;;; Commentary:
;; All the configurations for auto completion.
;; Currently we are using the following plugins:
;; Corfu, Embark, Marginalia, Orderless, Vertico, company
;; Additional plugins:
;; which-key, keycast
;;; Code:

;;; Corfu, Embark, Marginalia, Orderless
(use-package corfu
             :ensure nil
             :load-path (plugin-load "corfu")
             :init
             (corfu-global-mode))

(use-package embark
             :ensure nil
             :load-path (plugin-load "embark"))

(use-package marginalia
             :ensure nil
             :load-path (plugin-load "marginalia"))

(use-package orderless
             :ensure nil
             :load-path (plugin-load "orderless"))

(use-package vertico
             :ensure nil
             :load-path (plugin-load "vertico")
             :init
             (vertico-mode))

(use-package consult
             :ensure nil
             :load-path (plugin-load "consult"))

(provide 'init-tools-completion)
;;; init-tools-completion.el ends here.
