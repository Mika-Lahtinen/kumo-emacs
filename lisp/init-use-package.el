;; I'm not really sure whether I'll need packages from Elpa repos,
;; so here I still reserve Elpa links here.
;; (require 'package)
;; (setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
;;                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
;; (package-initialize) ;; You might already have this line

(defvar emacs-dir
  (eval-when-compile (file-truename user-emacs-directory)
  "Defined emacs-dir."))

(push (concat emacs-dir "plugin/use-package/") load-path)

(eval-when-compile
  (require 'use-package))

(setq package-check-signature nil)
(provide 'init-use-package)