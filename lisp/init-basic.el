;;; init-basic.el .
;;; Comment:
;; These configurations could be used in 
;; all versios of Emacs.
;;; Code:

;; Close startup screen
(setq inhibit-startup-message t)

;; Make sure quit Emacs.
(setq confirm-kill-emacs #'yes-or-no-p)

;; Stop using "bars"
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Stop auto backup files when editing.
(setq make-backup-files nil)

;; Parenthess setting
(electric-pair-mode t)

;; Add some hook for programming mode
(add-hook 'prog-mode-hook #'show-paren-mode)
(add-hook 'prog-mode-hook #'hs-minor-mode)

;; Numbers
(global-display-line-numbers-mode 1)
(column-number-mode t)
(setq display-line-numbers-type 'relative)

;; Some settings for editting a file
(global-auto-revert-mode t)
(delete-selection-mode t)

;; Initial frame size.
(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 35))


(provide 'init-basic)

;;; init-basic.el ends here.
