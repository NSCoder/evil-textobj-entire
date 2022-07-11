# Emacs vim entire buffer text object

This emacs package provide the text objects (`ae` and `ie`) to select the entire content of a buffer.

Examples:

```
vie -> select entire buffer
yie -> yank entire buffer
dae -> delete entire buffer
```

## Installation

Using [straight.el](https://github.com/radian-software/straight.el) and [use-package](jwiegley/use-package)

``` elisp
(use-package evil-textobj-entire
  :straight (evil-textobj-entire :host github :repo "nscoder/evil-textobj-entire"))
```

## Special Thanks

- Supermomonga for the first implementation of [evil-textobj-entire](https://github.com/supermomonga/evil-textobj-entire) which is the foundation of this package.
- Kana for the vim analog `vim-textobj-entire` which is the inspiration for this package.
