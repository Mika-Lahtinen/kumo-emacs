;;; completion.el --- Configurations for auto completing.
; -*- lexical binding: t -*-
;;; Commentary:
;; All the configurations for auto completion.
;; Currently we are using the following plugins:
;; vertico, orderless, consult, embark, company, marginalia
;; Additional plugins:
;; which-key, keycast
;;; Code:

;;; Company-mode
(use-package company
             :load-path "packages/company-mode"
             :hook
             (after-init . global-company-mode)
             :bind
             (:map company-active-map
                   ("C-n" . company-select-next)
                   ("C-p" . company-select-previous))
             ("<tab>" . company-complete)
             :config
             (setq company-minimum-prefix-length 1)
             (setq company-tooltip-align-annotations t)
             (setq company-tooltip-limit 6)
             )

(use-package company-box
             :load-path "packages/company-box"
             :if window-system
             :hook (company-mode . company-box-mode))

;;; Vertico
(use-package vertico
             :load-path "packages/vertico"
             :load-path "packages/vertico/extensions"
             :hook (after-init . vertico-mode)
             :config
             (vertico-mode)

             (setq vertico-resize nil
                   vertico-count 10
                   vertico-cycle t)

             (require 'vertico-repeat)
             (add-hook 'minibuffer-setup-hook #'vertico-repeat-save)

             (require 'vertico-directory)
             (add-hook 'rfn-eshadow-update-overlay-hook #'vertico-directory-tidy)
             )

;;; Orderless
(use-package orderless
             :load-path "packages/orderless"
             :init (icomplete-mode)
             :custom
             (completion-styles '(orderless basic)))

;;; Marginalia
(use-package marginalia
             :load-path "packages/marginalia"
             :bind
             (:map minibuffer-local-map
                   ("M-A" . marginalia-cycle))
             :config
             (marginalia-mode))

;;; Consult
(use-package consult
             :load-path "packages/consult"
             :bind
             (("C-s" . consult-line)))

;;; Embark
(use-package embark
             :load-path "packages/embark"
             :bind
             (("C-." . embark-act)
              ("C-;" . embark-dwim))
             :init
             (setq prefix-help-command 'embark-prefix-help-command)
             :config
             (add-to-list 'display-buffer-alist
                          '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
                            nil
                            (window-parameters (mode-line-format . none)))))

(use-package embark-consult
             :load-path "packages/embark"
             :after (embark consult)
             :hook
             (embark-collect-mode . consult-preview-at-point-mode))

;;; Which-key
(use-package which-key
             :load-path "packages/emacs-which-key"
             :hook
             (after-init . which-key-mode))

(provide 'tools/completion)
;;; completion.el ends here.
