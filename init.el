(add-to-list 'load-path "/home/tasty/.emacs.d/lisp/")
(let ((base "~/.emacs.d/lisp/"))
  (add-to-list 'load-path base)
  (let ((default-directory base))
    (normal-top-level-add-subdirs-to-load-path)))


;; initialize package management
(package-initialize)

;;check for repositories being present and add if necessary
(unless (assq 'gnu package-archives)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(unless (assq 'melpa package-archives)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")))

;; disable menu and toolbar
(tool-bar-mode 0)
(menu-bar-mode -1)

;; Default font
(if (fboundp 'set-frame-font)
    (set-frame-font "Monospace 14" nil t)
  (when (fboundp 'set-default-font)
    (set-default-font "Monospace 14")))


;; disable startup screen
(setq inhibit-startup-screen t)
;; empty scratch buffer
(setq initial-scratch-message nil)
;; load and switch to the scratch and delete other windows
(add-hook 'emacs-startup-hook
          (lambda ()
            (unless (seq-filter 'buffer-file-name (buffer-list))
              (switch-to-buffer "*scratch*")
              (delete-other-windows))))


;; load theme
(load-theme 'dark-mint t)

;; for documents like PDF to load automatically once updated, can be a potential hazard but the need for me on updates is more important
(add-hook 'doc-view-mode-hook 'auto-revert-mode)


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


(require 'julia-mode)
(load-file "~/.emacs.d/dangermode.el")

