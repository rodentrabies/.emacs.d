;;;-----------------------------------------------------------------------------
;;; Lisp-lavoured Erlang
;;;-----------------------------------------------------------------------------
(require-package 'lfe-mode)
(require-package 'paredit)
(require-package 'rainbow-delimiters)

(add-to-list 'auto-mode-alist '("\\.lfe\\'" . lfe-mode))

;; (require-package 'slime)
;; (require 'slime-autoloads)

;; ;; set lisp interpreter
;; (setq inferior-lisp-program "/usr/bin/sbcl")

;; ;; slime contribs
;; (setq slime-contribs '(slime-fancy))
(add-hook 'lfe-mode-hook 'rainbow-delimiters-mode)
(add-hook 'lfe-mode-hook #'enable-paredit-mode)
;;;-----------------------------------------------------------------------------

(provide 'init-lfe)
