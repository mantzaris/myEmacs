(add-to-list 'load-path "./")
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "/home/al062959/.emacs.d/")
(require 'julia-mode)

(tool-bar-mode 0)
(menu-bar-mode -1)

(require 'color-theme-buffer-local)
   (add-hook 'latex-mode 
     (lambda nil (color-theme-buffer-local 'color-theme-empty-void (current-buffer))))
