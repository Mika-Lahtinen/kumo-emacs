;;; base-package.el: A collection for core packages.
;;; Packages as base for other packages, which are the core dependencies.

(use-package shrink-path
    :load-path "packages/shrink-path")

(use-package compat
             :load-path "packages/compat")

(use-package dash
             :load-path "packages/dash.el")

(use-package queue
             :load-path "packages/queue")

(use-package language-id
             :load-path "packages/language-id")

(use-package xr
             :load-path "packages/xr")

(use-package s
             :load-path "packages/s.el")

(provide 'base/base-package)