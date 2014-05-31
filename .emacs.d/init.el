; make sure the target directory is on your load-path
(add-to-list 'load-path "~/.emacs.d")
(require 'php-mode)
(require 'drupal-mode)
(require 'web-mode)
(require 'twig-mode)
(require 'css-mode)
(require 'haml-mode)
(require 'sass-mode)

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.module$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.install$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.tpl.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.twig$" . twig-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(load-theme 'wombat)

; Set backup directory
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

; Add line numbers
(global-linum-mode t)
