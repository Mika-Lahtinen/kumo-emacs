;;; init.el --- Load all configurations. -*- lexical binding: t -*- 
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

;; If you need to move your configurations into 'init' module,
;; please move into 'lisp' path.
(defvar emacs-dir
  (eval-when-compile (file-truename user-emacs-directory)
  ))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Benchmarking for Emacs.
;; (require 'init-benchmarking)

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;; Adjust garbage collection thresholds during startup, and thereafter

;; (let ((normal-gc-cons-threshold (* 20 1024 1024))
;;       (init-gc-cons-threshold (* 128 1024 1024)))
;;   (setq gc-cons-threshold init-gc-cons-threshold)
;;   (add-hook 'emacs-startup-hook
;;             (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;; Basic settings when plugins are not loaded.
;; All the configurations in init-basic are common in all versions of Emacs.
(require 'cl-lib)
;; (require 'init-basic)
;; (require 'init-keybind)

;; (require 'init-elpaca)

;; (require 'init-display)
;; (require 'init-dir)
;; (require 'init-edit)
;; (require 'init-hint)

;; (require 'init-org)
;; Programming language configurations
;; (require 'lang/rust)

;; Custom settings are located here.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'no-error 'no-message)


(provide 'init)
;;; init.el ends here.
