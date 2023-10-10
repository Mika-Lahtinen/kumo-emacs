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
(require 'company)
(global-company-mode 1)
;; In Company-mode, the default keymap is M-n and M-p
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;;; Vertico
(require 'vertico)
(vertico-mode t)

;;; Orderless
(require 'orderless)
(setq completion-styles '(orderless))

;;; Marginalia
(require 'marginalia)
(marginalia-mode t)

;;; Consult
(require 'consult)
(global-set-key (kbd "C-s") 'consult-line)

;;; Embark
(require 'embark)
(global-set-key (kbd "C-;") 'embark-act)
(setq prefix-help-command 'embark-prefix-help-command)

;;; Which-key
(require 'which-key)

(provide 'tools/completion)
;;; completion.el ends here.