;;;;----------------------------------------------------------------------------
;;;; emacs init file
;;;;----------------------------------------------------------------------------

;; add all subdirectories to load pat
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;;;-----------------------------------------------------------------------------
;;; general settings
;;;-----------------------------------------------------------------------------
;; remove window elements
(tool-bar-mode -1) ; no toolbar
(menu-bar-mode -1) ; no menu
(scroll-bar-mode -1) ; no scrollbar
(setq inhibit-splash-screen t) ; no splash screen

;; metainfo
(add-hook 'prog-mode-hook
	  '(lambda ()
	     (linum-mode 1) ; line numbers
	     (column-number-mode 1)))  ; column number in the state-line

;; default theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'gruvbox t) 

;; font settings
(set-face-attribute 'default nil :height 100)

;; dynamic abbreviation 
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)

;; autoindentation
(global-set-key (kbd "RET") 'newline-and-indent)

;; default fullscreen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (elpy smartparens rust-mode haskell-mode paredit slime)))
 '(pyvenv-activate t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;;-----------------------------------------------------------------------------


;;;-----------------------------------------------------------------------------
;;; initialize modules
;;;-----------------------------------------------------------------------------
(require 'init-elpa)
(require 'init-common-lisp)
(require 'init-paredit)
(require 'init-haskell)
(require 'init-rust)
;(require 'init-scala)
(require 'init-ruby)
(require 'init-python)
;;;-----------------------------------------------------------------------------

(provide 'init)

