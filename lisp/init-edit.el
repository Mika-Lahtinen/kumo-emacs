;;; init-edit.el --- Confgiuration of Evil. -*- lexical binding: t -*- 
;;; Commentary: 
;; To accelerate the experience of editing files in Emacs,
;; here I add some useful plugins.
;; If you need to use your own settings,
;; please add your configuration in other files first
;; before moving them into this file.
;;; Code:

;; Evil
(use-package evil
    :demand t
    :ensure t
    :config
    (evil-mode))

;; Vertico
(use-package vertico
    :config
    (vertico-mode t))

(provide 'init-edit)

;;; init-edit.el ends here.