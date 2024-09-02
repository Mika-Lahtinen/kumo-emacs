;;; completion.el --- Configurations for auto completing.
; -*- lexical binding: t -*-
;;; Commentary:
;; All the configurations for auto completion.
;; Currently we are using the following plugins:
;; vertico, orderless, marginalia, embark, consult, corfu
;; Additional plugins:
;; which-key, keycast
;;; Code:

;;; orderless
(use-package orderless
    :ensure nil
    :load-path "packages/orderless/"
    :demand t
    :custom
    (completion-styles '(orderless basic))
    (completion-category-overrides '((file (styles basic partial-completion)))))

;;; Vertico
(use-package vertico
    :ensure nil
    :load-path "packages/vertico/"
    :hook
    (after-init . vertico-mode)
    :custom
    (vertico-cycle t))

;;; marginalia
(use-package marginalia
    :ensure nil
    :load-path "packages/marginalia/"
    :hook
    (after-init . marginalia-mode))

;;; consult
(use-package consult
    :ensure nil
    :load-path "packages/consult/"
    :bind
    (("C-s" . consult-line)
     ("C-x b" . consult-buffer)
     ("C-x C-b" . consult-buffer)
     ("C-x C-f" . consult-find)
     ("C-x C-r" . consult-recent-file)))

;;; embark
(use-package embark
    :ensure nil
    :load-path "packages/embark/"
    :bind
    (("C-." . embark-act)
     ("C-;" . embark-dwim)
     ("C-h B" . embark-bindings))
    :init
    (setq prefix-help-command #'embark-prefix-help-command)
    :config
    (add-to-list 'embark-allow-quit 'embark-act))

;;; corfu
(use-package corfu
    :ensure nil
    :load-path "packages/corfu/"
    :hook
    (after-init . global-corfu-mode)
    :custom
    (corfu-cycle t)
    (corfu-auto t)
    (corfu-separator ?\s)
    (corfu-quit-at-boundary t)
    (corfu-quit-no-match t)
    (corfu-preview-current nil)
    (corfu-preselect-first nil)
    (corfu-popupinfo-delay 0.5))

;;; Which-key: For displaying keybindings.



(provide 'init-tools-completion)
;;; completion.el ends here.
