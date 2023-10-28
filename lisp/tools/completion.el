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
  :ensure t
  :if window-system
  :hook (company-mode . company-box-mode))
;;; Vertico
(use-package vertico
  :init
  (vertico-mode)
  )

;;; Orderless
(use-package orderless
  :init (icomplete-mode)
  :custom
  (completion-styles '(orderless)))

;;; Marginalia
(use-package marginalia
  :bind 
  (:map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  :config
  (marginalia-mode))

;;; Consult
(use-package consult
  :bind
  (("C-s" . consult-line)))

;;; Embark
(use-package embark
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
  :after (embark consult)
  :hook
  (embark-collect-mode . consult-preview-at-point-mode))

;;; Which-key
(use-package which-key
  :hook
  (after-init . which-key-mode))

(provide 'tools/completion)
;;; completion.el ends here.
