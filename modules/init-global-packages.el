;;;;----------------------------------------------------------------------------
;;;; required packages and initialization code for global settings
;;;;----------------------------------------------------------------------------


;; default theme
(el-get-bundle gruvbox-theme
  :url "https://raw.githubusercontent.com/greduan/emacs-theme-gruvbox/master/gruvbox-theme.el"
  (add-to-list 'custom-theme-load-path default-directory)
  (load-theme 'gruvbox t))


;; powerline
(el-get-bundle! powerline
  :url "https://github.com/jonathanchu/emacs-powerline.git"
  (set-face-attribute 'mode-line nil :background "grey10" :box nil))


;; font settings
(setq-default indent-tabs-mode nil)
(set-frame-font
 "-apple-Monaco-normal-normal-normal-*-13-*-*-*-*-0-iso10646-1" nil t)


;; ido
(require 'ido)
(setq ido-default-buffer-method 'selected-window)
(ido-mode t)


;; paredit
(el-get-bundle! paredit
  (autoload 'enable-paredit-mode 
    "paredit" 
    "Turn on pseudo-structural editing of Lisp code.")
  (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook #'enable-paredit-mode))


;; rainbow delimiters
(el-get-bundle rainbow-delimiters
  (add-hook 'lisp-mode-hook 'rainbow-delimiters-mode))

(require 'paren)
(show-paren-mode 1)
(setq show-paren-delay 0)
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)




(provide 'init-global-packages)
