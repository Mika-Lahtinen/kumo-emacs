;; Frequently used plugins, the following configuration wouldn't 
;; be moved until I'm sure where could be suitable to move.

(use-package restart-emacs)

;;(use-package exec-path-from-shell
;;  :ensure t
;;  :when (or (memq window-system '(mac ns x))
;;        (unless *is-windows*
;;          (daemonp)))
;;  :init (exec-path-from-shell-initialize))

;; great for programmers
;;(use-package format-all
;;  ;; 开启保存时自动格式化
;;  :hook (prog-mode . format-all-mode)
;;  ;; 绑定一个手动格式化的快捷键
;;  :bind ("C-c f" . #'format-all-region-or-buffer))
;;
;;(use-package iedit)

(provide 'tools/freq)