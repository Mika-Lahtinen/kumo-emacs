(defun org-truncate-lines()
    (setq truncate-lines nil))
(use-package org
    :config
    :hook
    (org-mode . org-truncate-lines)
    )


(provide 'tools/org)