(add-to-list 'load-path "./")
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "/home/al062959/.emacs.d/")
(require 'julia-mode)

(tool-bar-mode 0)
(menu-bar-mode -1)


(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")
	                          ("melpa" . "http://melpa.org/packages/")))
(package-initialize) ;; You might already have this line

(load-theme 'dark-mint t)







(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2675e80e3a35ca1650b21cb5f8254073542108871453e5dc3c45b50f72692159" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )