;; [[file:~/.emacs.d/init.org::*Some%20initial%20settings][Some initial settings:1]]
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
;; Some initial settings:1 ends here

;; [[file:~/.emacs.d/init.org::*Menu-bar][Menu-bar:1]]
(menu-bar-mode -1)
(tool-bar-mode -1)
;; Menu-bar:1 ends here

;; [[file:~/.emacs.d/init.org::*Install%20use-package][Install use-package:1]]
(require 'package)
(add-to-list 'package-archives
       '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
       '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(package-initialize)
(unless (package-installed-p 'use-package )
  (package-refresh-contents)
  (package-install 'use-package ))

(require 'use-package)
;; Install use-package:1 ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((eval add-hook
	   (quote after-save-hook)
	   (lambda nil
	     (org-babel-tangle))
	   nil t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
