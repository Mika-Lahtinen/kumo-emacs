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
             :hook
             (after-init . global-corfu-mode)
             :custom
             (corfu-auto t)
             (corfu-auto-prefix 1)
             (corfu-auto-delay 0.0)
             (corfu-cycle t)
             (corfu-echo-documentation t)
             )

(use-package corfu-terminal
             :ensure nil
             :config
             (unless (display-graphic-p)
               (corfu-terminal-mode +1))
             )

(use-package nerd-icons-corfu
             :ensure nil
             :config
             (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

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

(use-package vertico
             :ensure nil
             :hook
             (after-init . vertico-mode))

(use-package orderless
             :ensure nil
             :custom
             (completion-styles '(orderless basic))
             (completion-category-overrides '((file (styles partial-completion))))
             (completion-pcm-leading-wildcard t)
             )

(use-package consult
             :ensure nil
             :bind
             (("C-s" . consult-line)
              ("C-x b" . consult-buffer))
             )

(use-package cape
             :ensure nil
             :bind
             ("C-c p" . cape-prefix-map)
             :config
             (add-to-list 'completion-at-point-functions #'cape-dabbrev)
             (add-to-list 'completion-at-point-functions #'cape-file)
             (add-to-list 'completion-at-point-functions #'cape-dict)
             (add-to-list 'completion-at-point-functions #'cape-keyword)
             (add-to-list 'completion-at-point-functions #'cape-history)
             )

(provide 'init-tools-completion)
;;; init-tools-completion.el ends here.
