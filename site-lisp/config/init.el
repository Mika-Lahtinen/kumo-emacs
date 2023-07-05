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

;; Basic settings when plugins are not loaded.
;; All the configurations in init-basic are common in all versions of Emacs.
(require 'cl-lib)
(require 'init-basic)
(require 'init-display)
;; (require 'init-keybind)

;; Tools wanna use settings
;; (require 'tools/lsp)
;; (require 'tools/org)
;; (require 'tools/completion)

;; Programming language configurations
;; (require 'lang/cpp)
;; (require 'lang/rust)
;; (require 'lang/elixir)
;; (require 'lang/javascript)
;; (require 'lang/markdown)
;; (require 'lang/latex)
;; 

;; Custom settings are located here.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'no-error 'no-message)


(provide 'init)
;;; init.el ends here.
