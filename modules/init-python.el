;;;-----------------------------------------------------------------------------
;;; python
;;;-----------------------------------------------------------------------------
(require-package 'elpy)

;; smartparens
(require-package 'smartparens)
(add-hook 'python-mode-hook 'smartparens-mode)

(elpy-enable)
;;;-----------------------------------------------------------------------------

(provide 'init-python)
