;;;-----------------------------------------------------------------------------
;;; haskell
;;;-----------------------------------------------------------------------------
(require-package 'haskell-mode)
(require-package 'ghc)
(require-package 'company-ghc)
(require-package 'company)

(add-to-list 'company-backends 'company-ghc)

(add-hook 'haskell-mode-hook 'global-company-mode)
(custom-set-variables '(company-ghc-show-info t))

(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
;;;-----------------------------------------------------------------------------

(provide 'init-haskell)
