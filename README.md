# Kurtis's own Emacs configuration

This configuration is still contributing, for more details please follow this repository.

## Requirement

- Emacs version >= 28 is recommend, maybe you can use the repo under 27.2, I'm not sure now.
- git
- For Windows user : Msys2 is necessary

## How to use it

1. Clone the repository to a directory in your favor.
2. Use the following command in repo to fetch plugins.
```shell
git submodule update --init --recursive
git submodule foreach git reset --hard
git submodule foreach git checkout $(git remote show origin | awk '/HEAD 分支|HEAD branch/ {split($0, a, "："); print a[2]}')
```

3. Add the following code into your *.emacs* file
```lisp
(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "/path/to/kemacs/site-lisp/")

(require 'init)
```

4. Open Emacs and enjoy.