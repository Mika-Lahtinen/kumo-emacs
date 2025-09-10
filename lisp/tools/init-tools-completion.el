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
             :config
             (corfu-global-mode))

(use-package embark
             :ensure nil
             :bind
             (("C-." . embark-act)
              ("C-;" . embark-dwim)
              ("C-h B" . embark-bindings)))

(use-package marginalia
             :ensure nil
             :config
             (marginalia-mode)
             :bind
             (:map minibuffer-local-map
			  ("M-A" . marginalia-cycle)))

(fido-mode 1)
(fido-vertical-mode 1)

(use-package consult
             :ensure nil
             )

(provide 'init-tools-completion)
;;; init-tools-completion.el ends here.
