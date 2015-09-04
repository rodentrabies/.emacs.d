;;;-----------------------------------------------------------------------------
;;; setup paredit for lisp
;;;-----------------------------------------------------------------------------
(require-package 'paredit)

;; paredit
(autoload 'enable-paredit-mode 
          "paredit" 
          "Turn on pseudo-structural editing of Lisp code.")
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook #'enable-paredit-mode)
(add-hook 'clojure-mode-hook #'enable-paredit-mode)

(show-paren-mode 1)
(setq show-paren-delay 0)
(require 'paren)
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)


(provide 'init-paredit)
