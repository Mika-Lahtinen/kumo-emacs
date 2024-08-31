;; UTF-8 Default
(set-language-environment 'UTF-8)
(set-locale-environment "en_US.UTF-8")
(setq system-time-locale "en_US")

;; Encoding
(prefer-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(setq-default pathname-coding-system 'utf-8)
(setq
  default-process-coding-system '(utf-8 . utf-8)
  locale-coding-system 'utf-8
  file-name-coding-system 'utf-8
  default-buffer-file-coding-system 'utf-8
  slime-net-coding-system 'utf-8-unix)
(unless *is-windows*
  (set-selection-coding-system 'utf-8))

(provide 'init-locale)
