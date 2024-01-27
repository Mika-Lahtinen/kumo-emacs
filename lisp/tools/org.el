(defun org-private-settings()
  (progn
    (setq truncate-lines nil
          truncate-partial-width-windows nil
          org-hide-emphasis-markers t
          org-startup-indented t
          org-pretty-entities t
          org-use-sub-superscripts "{}"
          org-hide-emphasis-markers t
          org-startup-with-inline-images t
          org-image-actual-width '(300))))

;; LaTeX preview
;; (use-package org-fragtog
;;              :load-path "packages/org-fragtog"
;;              :after org
;;              :hook
;;              (org-mode . org-fragtog-mode)
;;              :custom
;;              (org-format-latex-options
;;                (plist-put org-format-latex-options :scale 0.8)
;;                (plist-put org-format-latex-options :foreground 'auto)
;;                (plist-put org-format-latex-options :background 'auto)))

(use-package org-modern
             :load-path "packages/org-modern"
             :hook
             (org-mode . org-modern-mode))

(use-package org
             :config
             :hook
             (org-mode . org-private-settings)
             )


(provide 'tools/org)
