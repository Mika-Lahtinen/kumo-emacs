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
    :init
    (setq evil-want-integration t)
    (setq evil-want-keybinding nil)
    (setq evil-vsplit-window-right t)
    (setq evil-split-window-below t)
    (evil-mode))
(use-package evil-collection
    :after evil
    :ensure t
    :config
    (evil-collection-init))

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
