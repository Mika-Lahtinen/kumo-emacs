(when *is-windows*
    (set-face-attribute 'default nil 
        :font "Cascadia Mono" 
        :height 110
        :weight 'Regular)
;;    (setq locale-coding-system 'gb18030)
;;    (setq w32-unicode-filenames 'nil)
;;    (setq file-name-coding-system 'gb18030)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
        charset (font-spec :family "微软雅黑" :size 14)))
        )

(when *is-linux*
    (set-face-attribute 'default nil 
        :font "Dejavu" 
        :height 100
        :weight 'Regular))

;; Color theme
(use-package color-theme-modern
    :load-path "packages/color-theme-modern"
    :config
    (load-theme 'desert t))

;; Icons
(use-package nerd-icons
    :load-path "packages/nerd-icons.el")

(use-package nerd-icons-dired
    :load-path "packages/nerd-icons-dired"
    :after dired
    :hook
    (dired-mode . nerd-icons-dired-mode))

(setq-default truncate-lines nil)

(provide 'base/display)