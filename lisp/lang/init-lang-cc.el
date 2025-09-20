;;; init-lang-cc --- C/C++ Settings
(use-package modern-cpp-font-lock
             :ensure nil)

(use-package irony
             :ensure nil
             :hook ((c++-mode . irony-mode)
                    (c-mode . irony-mode)))

(defun cc-common-hook ()
  (c-set-style "stroustrup")
  (setq c-basic-offset 4)
  (c-toggle-auto-hungry-state 1)

  (eglot-ensure)
  (flymake-mode 1))

;; (defun c-only-hook ()
;;   (set c-file-style "linux"
;;        c-basic-offset 4)
;;   )
;; 
;; (defun cpp-only-hook ()
;;   (modern-c++-font-lock-mode 1))

(add-hook 'c-mode-common-hook 'cc-common-hook)
;; (add-hook 'c-mode-hook 'c-only-hook)
;; (add-hook 'c++-mode-hook 'cpp-only-hook)

(provide 'init-lang-cc)
;;; init-lang-cc.el ends here.
