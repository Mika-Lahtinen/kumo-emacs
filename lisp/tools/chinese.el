;;; Add support for Chinese input.
(use-package pyim
             :load-path "packages/pyim"
             :bind
             ("C-\\" . toggle-input-method)
             :init
             (require 'pyim)
             (setq default-input-method "pyim")
             (setq pyim-cloudim 'baidu)
             (pyim-default-scheme 'microsoft-shuangpin))

(use-package pyim-tsinghua-dict
             :load-path "packages/pyim-tsinghua-dict"
             :after pyim
             :config
             (require 'pyim-tsinghua-dict)
             (pyim-tsinghua-dict-enable))

(provide 'tools/chinese)
