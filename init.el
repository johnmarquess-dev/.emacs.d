;; [[file:~/.emacs.d/init.org::*Some%20initial%20settings][Some initial settings:1]]
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
;; Some initial settings:1 ends here

;; [[file:~/.emacs.d/init.org::*Menu-bar][Menu-bar:1]]
(menu-bar-mode -1)
(tool-bar-mode -1)
;; Menu-bar:1 ends here

;; [[file:~/.emacs.d/init.org::*Split%20window%20horizontally][Split window horizontally:1]]
(split-window-horizontally)
;; Split window horizontally:1 ends here

;; [[file:~/.emacs.d/init.org::*Set%20up%20package%20archives%20and%20install%20use-package][Set up package archives and install use-package:1]]
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
;; Set up package archives and install use-package:1 ends here

;; [[file:~/.emacs.d/init.org::*Configure%20use-package][Configure use-package:1]]
(setq use-package-always-ensure t)
;; Configure use-package:1 ends here

;; [[file:~/.emacs.d/init.org::*Intsall%20magit][Intsall magit:1]]
(use-package magit
  :commands (magit-status)
  :bind ("C-x g" . magit-status))
;; Intsall magit:1 ends here
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
