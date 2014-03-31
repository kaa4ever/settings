; make sure the target directory is on your load-path
(add-to-list 'load-path "~/.emacs.d")
(require 'php-mode)

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . php-mode))

(load-theme 'wombat)

; Set tab indent to 2.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)
(setq standard-indent 2)
