;;;-----------------------------------------------------------------------------
;;; common lisp
;;;-----------------------------------------------------------------------------
(require-package 'slime)
(require 'slime-autoloads)

;; set lisp interpreter
(setq inferior-lisp-program "/usr/local/bin/sbcl")

;; slime contribs
(setq slime-contribs '(slime-fancy))
(slime-setup)

(provide 'init-common-lisp)
