;;(setq package-archives '(
;;    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;    ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
;;
(setq package-check-signature nil)
;;(require 'package)
;;(unless (bound-and-true-p package--initialized)
;;    (package-initialize))
;;(unless package-archive-contents
;;     (package-refresh-contents))
;;
;;(unless (package-installed-p 'use-package)
;;    (package-refresh-contents)
;;    (package-install 'use-package))
;;
(add-to-list 'load-path
             (concat user-emacs-directory
                     (convert-standard-filename "packages/use-package/")))

(require 'use-package)
(eval-and-compile
  ;;    (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-always-demand nil)
  (setq use-package-expand-minimally t)
  (setq use-package-verbose t))
;;

;; Packages that common used.
(use-package compat
             :load-path "packages/compat")


(provide 'base/package)
;;; base/package.el ends here.
