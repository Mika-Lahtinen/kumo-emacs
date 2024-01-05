;; UTF-8 Default
(set-language-environment 'UTF-8)
(set-locale-environment "en_US.UTF-8")
(setq system-time-locale "C")

;; Encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(unless *is-windows*
    (set-selection-coding-system 'utf-8))

(provide 'base/locale)