
(defvar emacs-dir
  (eval-when-compile (file-truename user-emacs-directory)
  "Defined emacs-dir."))

(push (concat emacs-dir "plugin/use-package/") load-path)

(eval-when-compile
  (require 'use-package))

;; I'm not really sure whether I'll need packages from Elpa repos,
;; so here I still reserve Elpa links here.
;; (require 'package)
;; (setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
;;                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
;;
;; Run package-refresh-contents if first start.
;; use folder "var" to check if it is the first start, see no-littering.
;; (unless (file-exists-p (expand-file-name "var" user-emacs-directory))
;;  (package-refresh-contents))

;; (setq package-enable-at-startup nil)

;; (package-initialize)

(require 'use-package)
(setq use-package-always-sure t)

(setq package-check-signature nil)
(provide 'init-use-package)