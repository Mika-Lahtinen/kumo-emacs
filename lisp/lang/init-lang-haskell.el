;;; init-lang-haskell --- Haskell settings
;;; Code:
(use-package haskell-mode
  :ensure t
  :mode
  (("\\.hs\\'" . haskell-mode)
   ("\\.lhs\\'" . haskell-mode))
  :hook
  (haskell-mode . (lambda ()
		    (haskell-mode-set-interactive-eval-handlers)
		    (haskell-process-cabal-init)
		    (haskell-process-ghci-init)))
  :config
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
  (define-key haskell-mode-map (kbd "C-c C-s") 'haskell-send-region)
  (define-key haskell-mode-map (kbd "C-c C-e") 'haskell-send-declaration)
  )

(provide 'init-lang-haskell)
;;; init-lang-haskell.el ends here.
