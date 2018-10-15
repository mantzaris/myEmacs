(add-to-list 'load-path "./")
;;(add-to-list 'load-path "~/.emacs.d/init.el")
;;(add-to-list 'load-path "/home/al062959/.emacs.d/")
(require 'julia-mode)

(tool-bar-mode 0)
(menu-bar-mode -1)


(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")
	                          ("melpa" . "http://melpa.org/packages/")))
(package-initialize) ;; You might already have this line

(load-theme 'dark-mint t)

;; default font
(set-default-font "Monospace 14")


;; for documents like PDF to load automatically once updated, can be a potential hazard but the need for me on updates is more important
(add-hook 'doc-view-mode-hook 'auto-revert-mode)

;;when editing a pdf from latex the dynamic update on the pdf incurs changes, emacs attempts to store these changes but it is too big, and reports that it can't but we don't care so we should not see this warning as it is annoying obvious and not a problem
;;doc-view-mode is a major mode then doc-view-mode-hook
;;(add-hook 'doc-view-mode-hook 'buffer-disable-undo)

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



(add-hook 'emacs-startup-hook switch-to-buffer "*shell*")
;;(setq delete-other-windows)

