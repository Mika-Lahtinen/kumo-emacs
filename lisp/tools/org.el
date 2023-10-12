(use-package org
    :ensure t
    :config
    (progn 
        (org-babel-do-load-languages 
            'org-babel-load-languages 
            '(
                (python . t)
                (rust . t)
                (elixir . t)
                (C . t)
                ))
        )
    )

(provide 'tools/org)