(setq-default tab-width 4)

;; Automatically delete trailing whitespace and tabs
(add-hook
 'before-save-hook
 (lambda ()
   (delete-trailing-whitespace)))

;; C/C++
(add-to-list 'auto-mode-alist '("\\.h" . c++-mode))
(setq c-default-style "linux"
      c-basic-offset 4)

;; Matlab
(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
(add-hook
 'octave-mode-hook
 (lambda ()
   ;; Use Matlab style comments
   (set (make-local-variable 'comment-start) "%")
   (set (make-local-variable 'comment-add) 2)
   (set (make-local-variable 'comment-style) 'indent)))
