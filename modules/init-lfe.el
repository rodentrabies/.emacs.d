;;;-----------------------------------------------------------------------------
;;; Lisp-lavoured Erlang
;;;-----------------------------------------------------------------------------
(require-package 'paredit)
(require-package 'rainbow-delimiters)

(setq load-path (cons (concat (getenv "HOME") "/00_util/lfe/emacs") load-path))
(require 'lfe-start)

(add-hook 'lfe-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lfe-mode-hook #'enable-paredit-mode)
;;;-----------------------------------------------------------------------------

(provide 'init-lfe)
