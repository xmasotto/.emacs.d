(require-package 'zenburn-theme)
(load-theme 'zenburn t)

(global-hl-line-mode)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode -1)

(add-hook 'find-file-hook 'linum-mode)
