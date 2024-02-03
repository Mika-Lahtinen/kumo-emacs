;;; init-basic.el .
;; -*- lexical-binding: t -*-
;;; Comment:
;; These configurations could be used in
;; all versios of Emacs.
;;; Code:

;; Check OS
(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (memq system-type '(cygwin windows-nt ms-dos)))

;; Close startup screen
(setq inhibit-startup-message t)

;; Highlight line
(global-hl-line-mode t)

;; Don't pop up UI dialogs when prompting
(setq use-dialog-box nil)

;; Make sure quit Emacs.
(setq confirm-kill-emacs #'yes-or-no-p)

;; Stop using "bars"
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Show time and battery.
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-battery-mode 1)
(setq visible-bell 1)

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
;; (setq auto-save-default nil)

;; Yes or No
(defalias 'yes-or-no-p 'y-or-n-p)

;; Recent opened files in Emacs.
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; IDO mode
;; (require 'ido)
;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (ido-mode t)

;; Fix LISP evaluation depth errors.
;; (setq max-lisp-eval-depth 10000)

(provide 'base/basic)

;;; init-basic.el ends here.


