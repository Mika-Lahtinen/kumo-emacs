;;; init.el --- Load all configurations.
; -*- lexical binding: t -*-
;;; Commentary:
;; All confuigurations are divided into many modules here.
;; To start or stop using predefined modules,
;; just checkout the following 'init' modules here.
;; If you want to add your configuration,
;; please add into custom.el first,
;; or you can add into early-init.el
;; if you make sure your configuration could applied at startup
;; without any other modules which are in need of being loaded first.
;;; Code:

;; Checkout your Emacs environment.
(let ((minver "26.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "27.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

;; Benchmarking for Emacs.
;; (require 'init-benchmarking)

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer

;; Adjust garbage collection thresholds during startup, and thereafter

(if (not (display-graphic-p))
  (progn
    ;; Enlarge GC
    (setq gc-cons-threshold (* 8192 8192))
    ;; When working with LSP.
    (setq read-process-output-max (* 1024 1024 128)) ;; 128MB
    ))

(require 'cl-lib)

;;; Basic settings for all Emacs.
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "lisp/base/")))
(require 'init-package-source)
(require 'init-builtin-package)
;; (require 'init-base-deps)
(require 'init-basic)
(require 'init-locale)
(require 'init-display)
(require 'init-keybind)

;; Tools wanna use settings
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "lisp/tools/")))
(require 'init-tools-common)
;; (require 'init-tools-evil)
;; (require 'init-tools-org)
(require 'init-tools-completion)
(require 'init-tools-checkers)
;; (require 'init-tools-snippets)
;; (require 'init-tools-lsp)
;; (require 'init-tools-chinese)

;; Programming language configurations
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "lisp/lang/")))
;; (require 'init-lang-cc)
;; (require 'init-lang-rust)
;; (require 'init-lang-elixir)
;; (require 'init-lang-javascript)
;; (require 'init-lang-markdown)
;; (require 'init-lang-latex)
;;

;; Custom settings are located here.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'no-error 'no-message)


(provide 'init)
;;; init.el ends here.
