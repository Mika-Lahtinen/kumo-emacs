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
             ;; :load-path "plugins/corfu"
             :config
             (corfu-global-mode))

(use-package embark
             :ensure nil
             ;; :load-path "plugins/embark"
             :bind
             (("C-." . embark-act)))

(use-package marginalia
             :ensure nil
             ;; :load-path "plugins/marginalia"
             :config
             (marginalia-mode)
             :bind
             (:map minibuffer-local-map
			  ("M-A" . marginalia-cycle)))

(fido-mode 1)
(fido-vertical-mode 1)
;; (use-package vertico
;;              :ensure nil
             ;; :load-path "plugins/vertico"
;;              :hook
;;              (after-init . vertico-mode))

(use-package consult
             :ensure nil
             ;; :load-path "plugins/consult"
             )

(provide 'init-tools-completion)
;;; init-tools-completion.el ends here.
