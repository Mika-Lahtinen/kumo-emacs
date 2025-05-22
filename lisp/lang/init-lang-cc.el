;;; C/C++ Settings
(use-package modern-cpp-font-lock
  :ensure t)

(defun cc-common-hook ()
  (c-set-style "stroustrup")
  (setq c-basic-offset 4)
  (c-toggle-auto-hungry-state 1)

  (eglot-ensure)
  (company-mode 1)
  (flymake-mode 1))

(defun c-only-hook ()
  (set c-file-style "linux"
       c-basic-offset 4)
  )

(provide 'init-lang-cc)
