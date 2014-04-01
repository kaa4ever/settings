; make sure the target directory is on your load-path
(add-to-list 'load-path "~/.emacs.d")
(require 'php-mode)
(require 'drupal-mode)

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . drupal-mode))

(load-theme 'wombat)

; Set backup directory
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

; Add line numbers
(global-linum-mode t)
