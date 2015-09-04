;;;-----------------------------------------------------------------------------
;;; clojure
;;;-----------------------------------------------------------------------------
(require-package 'clojure-mode)
(require-package 'cider)
(require-package 'auto-complete)
(require-package 'ac-cider)
(require-package 'clj-refactor)
(require-package 'company)

(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-mode))
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-repl-mode))
;;;-----------------------------------------------------------------------------

(provide 'init-clojure)
