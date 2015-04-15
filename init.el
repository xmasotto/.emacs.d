(setq package-archives '())
(add-to-list 'package-archives
			 '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
			 '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.org/packages/"))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(defun require-package (package-name)
  (unless (package-installed-p package-name)
    (package-install package-name))
  (require package-name))

;; Make sure require-package works
(require-package 'dash)
(require-package 's)

(load "~/.emacs.d/appearance.el")
(load "~/.emacs.d/shell_config.el")
(load "~/.emacs.d/coding.el")

;; Hide away backup and autosave files
(setq auto-save-file-name-transforms
	  (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
(setq backup-directory-alist
	  (quote ((".*" . "~/.emacs.d/backups/"))))
(make-directory "~/.emacs.d/autosaves" t)

;; Winner Mode
(winner-mode 1)
(global-set-key (kbd "ESC <left>") 'winner-undo)
(global-set-key (kbd "ESC <right>") 'winner-redo)
(global-set-key (kbd "<M-left>") 'winner-undo)
(global-set-key (kbd "<M-right>") 'winner-redo)

;; Helm Mode
(require-package 'helm)
(helm-mode 1)
(global-set-key (kbd "M-SPC") 'helm-mini)
