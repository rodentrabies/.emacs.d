;;;;----------------------------------------------------------------------------
;;;; appearance
;;;;----------------------------------------------------------------------------
;; remove window elements
(tool-bar-mode -1) ; no toolbar
(menu-bar-mode -1) ; no menu
(scroll-bar-mode -1) ; no scrollbar
(setq inhibit-splash-screen t) ; no splash screen

;; metainformation
(add-hook
 'prog-mode-hook
 '(lambda ()
    (linum-mode 1) ; line numbers
    (column-number-mode 1)))  ; column number in the state-line

;; default theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'gotham t)

;; powerline
(require 'powerline)

;; font settings
(setq-default indent-tabs-mode nil)
(set-frame-font
 "-apple-Monaco-normal-normal-normal-*-13-*-*-*-*-0-iso10646-1" nil t)

;; ido
(require-package 'ido)
(ido-mode t)

;; dynamic abbreviation 
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)

;; autoindentation
(global-set-key (kbd "RET") 'newline-and-indent)
;;;;----------------------------------------------------------------------------

(provide 'init-appearance)
