;;;-----------------------------------------------------------------------------
;;; ruby
;;;-----------------------------------------------------------------------------
;; smartparens
(require-package 'smartparens)
(require-package 'ruby-end)
(add-hook 'ruby-mode-hook 'smartparens-mode)
;;;-----------------------------------------------------------------------------

(provide 'init-ruby)
