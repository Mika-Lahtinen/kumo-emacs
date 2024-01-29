# Kurtis's own Emacs configuration

This configuration is still contributing, for more details please follow this repository.

## Requirement

- Emacs version >= 28 is recommend.
- git
- ripgrep
- For Windows user : Msys2 is necessary

## How to use it

1. (For Windows User)Make sure you have set HOME variable.
2. Clone the repository to one of the following path: 

- `{$HOME}/.emacs.d`
- `{$HOME}/.config/emacs`

3. Update plugins by using git submodules commands:
```shell
git submodule init
git submodule update --depth=1
```

4. Start Emacs, enjoy, if you want to add your own configuration, please create and edit "custom.el" first.