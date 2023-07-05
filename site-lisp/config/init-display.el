(add-to-list 'custom-theme-load-path
             (file-name-as-directory (expand-file-name "site-lisp/themes" user-emacs-directory)))
(load-theme 'aalto-light t t)
(enable-theme 'aalto-light)

(when *is-windows*
    (set-face-attribute 'default nil 
        :font "Cascadia Mono" 
        :height 100
        :weight 'Regular)
    (setq locale-coding-system 'gb18030)
    (setq w32-unicode-filenames 'nil)
    (setq file-name-coding-system 'gb18030)
        )

(when *is-linux*
    (set-face-attribute 'default nil 
        :font "Dejavu" 
        :height 100
        :weight 'Regular))

(provide 'init-display)