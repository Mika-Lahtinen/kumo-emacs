;;; init-tools-completion.el --- Configurations for auto completing.
; -*- lexical binding: t -*-
;;; Commentary:
;; All the configurations for auto completion.
;; Currently we are using the following plugins:
;; ivy, counsel, swiper, company
;; Additional plugins:
;; which-key, keycast
;;; Code:

;;; Ivy, counsel and swiper
(use-package swiper
             :ensure nil
             :load-path "plugins/swiper"
             :bind
             (("C-s" . swiper-isearch))
             )
(use-package ivy
             :ensure nil
             :load-path "plugins/swiper"
             :init
             (ivy-mode)
             :bind
             (("C-c C-r" . ivy-resume))
             :config
             (setq ivy-use-virtual-buffers t
                   ivy-count-format "(%d/%d) "
                   search-default-mode #'char-fold-to-regexp
                   enable-recursive-minibuffers t)
             )
(use-package ivy-xref
             :ensure t
             :config
             (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))
(use-package counsel
             :ensure nil
             :load-path "plugins/swiper"
             :bind
             (("M-x" . counsel-M-x)
              ("C-x C-f" . counsel-find-file)
              ("C-c g" . counsel-git)
              ("C-c k" . counsel-rg)
              ("C-x b" . ivy-switch-buffer)
              ("M-y" . counsel-yank-pop)
              :map minibuffer-local-map
              ("C-r" . counsel-minibuffer-history))
             )
(use-package counsel-etags
             :ensure t
             :config
             (add-hook 'prog-mode-hook
                       (lambda ()
                         (add-hook 'after-save-hook
                                   'counsel-etags-virtual-update-tags 'append 'local)))
             )

;;; Company
(use-package company
             :ensure t
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
