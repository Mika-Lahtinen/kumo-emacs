;;; Early init file, to accelerate startup time of Emacs.
;;; Emacs 27.0+ only.
;;; Before adding into individual 'init' file,
;;; the configuration will be added here to make experiment.


(setq byte-compile-warnings nil)
(setq native-comp-async-report-warnings-errors nil)
(setq package-enable-at-startup nil)

;; Initial frame size.
;;(add-to-list 'default-frame-alist '(width . 80))
;;(add-to-list 'default-frame-alist '(height . 25))
(setq default-frame-alist '((width . 100) (height . 30)))

(provide 'early-init)

;;; early-init.el ends here.