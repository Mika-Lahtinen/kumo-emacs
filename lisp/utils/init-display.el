(when *is-windows*
  (set-face-attribute 'default nil
                      :font "Cascadia Mono"
                      :height 110
                      :weight 'Regular)
  ;;    (setq locale-coding-system 'gb18030)
  ;;    (setq w32-unicode-filenames 'nil)
  ;;    (setq file-name-coding-system 'gb18030)
  (when (display-graphic-p)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                      charset (font-spec :family "微软雅黑" :size 14))))
  )

(when *is-linux*
  (set-face-attribute 'default nil
                      :font "Monospace"
                      :height 100
                      :weight 'Regular))

;; Color theme
(load-theme 'adwaita t t)
(enable-theme 'adwaita)

;; Icons
;; (setq truncate-partial-width-windows nil)
(setq-default truncate-lines nil)
(add-hook 'org-mode-hook #'toggle-truncate-lines)

(provide 'init-display)
