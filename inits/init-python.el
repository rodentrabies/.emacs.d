;;;-----------------------------------------------------------------------------
;;; python
;;;-----------------------------------------------------------------------------
;; elpy
(require-package 'elpy)
(package-initialize)
(elpy-enable)

;; smartparens
(require-package 'smartparens)
(add-hook 'python-mode-hook 'smartparens-mode)
;;;-----------------------------------------------------------------------------

(provide 'init-python)
