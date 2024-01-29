;;; Add support for Chinese input.
(use-package pyim
             :load-path "packages/pyim"
             :bind
             ("C-\\" . toggle-input-method)
             :init
             (require 'pyim)
             (require 'pyim-basedict)
             (pyim-basedict-enable)
             (setq default-input-method "pyim")
             (setq pyim-cloudim 'baidu)
             (pyim-default-scheme 'microsoft-shuangpin))

(use-package pyim-tsinghua-dict
             :load-path "packages/pyim-tsinghua-dict"
             :config
             (require 'pyim-tsinghua-dict)
             (pyim-tsinghua-dict-enable))

(provide 'tools/chinese)
