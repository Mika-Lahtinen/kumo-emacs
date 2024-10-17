;;; init-keybind.el file.
;;; Global key bindings are added here.
;;; It depends on user's habits.
;;; Here I use default keymap.
;;; However, you can add your own bindings here by yourself.

(global-set-key (kbd "M-n") #'flymake-goto-next-error)
(global-set-key (kbd "M-p") #'flymake-goto-prev-error)

(provide 'init-keybind)

;;; init-keybind.el ends here.
