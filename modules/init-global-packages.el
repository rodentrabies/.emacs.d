;;;;----------------------------------------------------------------------------
;;;; required packages and initialization code for global settings
;;;;----------------------------------------------------------------------------


;; themes

;; (el-get-bundle gruvbox-theme
;;   :url "https://github.com/greduan/emacs-theme-gruvbox.git"
;;   (add-to-list 'custom-theme-load-path default-directory)
;;   (load-theme 'gruvbox t))

;; (el-get-bundle deep-thought-theme
;;   :url "https://github.com/yurizhykin/emacs-deep-thought-theme.git"
;;   (add-to-list 'custom-theme-load-path default-directory)
;;   (load-theme 'deep-thought t))

(el-get-bundle lime-theme
  :url "https://github.com/yurizhykin/emacs-lime-theme.git"
  (add-to-list 'custom-theme-load-path default-directory)
  (load-theme 'lime t))

;; powerline
(el-get-bundle! powerline
  :url "https://github.com/milkypostman/emacs-powerline.git")

(el-get-bundle! airline-themes
  :depends (evil)
  (load-theme 'airline-luna t)
  (setq powerline-utf-8-separator-left        #xe0b0
        powerline-utf-8-separator-right       #xe0b2
        airline-utf-glyph-separator-left      #xe0b0
        airline-utf-glyph-separator-right     #xe0b2
        airline-utf-glyph-subseparator-left   #xe0b1
        airline-utf-glyph-subseparator-right  #xe0b3
        airline-utf-glyph-branch              #xe0a0
        airline-utf-glyph-readonly            #xe0a2
        airline-utf-glyph-linenumber          #xe0a1))


;; font settings
(setq-default indent-tabs-mode nil)
(set-frame-font
 "-apple-Monaco-normal-normal-normal-*-13-*-*-*-*-0-iso10646-1" nil t)

;; fireplace :)
(el-get-bundle fireplace
  :url "https://github.com/johanvts/emacs-fireplace.git")

;; ido
(require 'ido)
(setq ido-default-buffer-method 'selected-window)
(ido-mode t)

;; minimap
(el-get-bundle minimap)
(add-hook 'minimap-sb-mode-hook
          (lambda ()
            (set-face-background 'minimap-active-region-background "dark olive green")
            (setq mode-line-format nil)))

(el-get-bundle markdown-mode)

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
