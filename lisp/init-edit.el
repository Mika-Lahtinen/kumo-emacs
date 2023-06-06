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

;;; Auto completion are following here.
;; Vertico
(use-package vertico
    :init
    (vertico-mode t))

;; Orderless
(use-package orderless
    :init
    (setq completions-style '(orderless)))

;; Corfu -- Company alternative
(use-package corfu
    :init
    (global-corfu-mode)
    :config
    (setq corfu-auto t
        corfu-quit-no-match 'separator))
    
;;; Typing check.
(use-package flymake
  :hook (prog-mode . flymake-mode)
  :config
  (global-set-key (kbd "M-n") #'flymake-goto-next-error)
  (global-set-key (kbd "M-p") #'flymake-goto-prev-error))

(provide 'init-edit)

;;; init-edit.el ends here.