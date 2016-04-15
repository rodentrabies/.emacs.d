;;;-----------------------------------------------------------------------------
;;; python
;;;-----------------------------------------------------------------------------
(require-package 'elpy)
(elpy-enable)

;; smartparens
(require-package 'smartparens)
(add-hook 'python-mode-hook 'smartparens-mode)
(add-hook 'python-mode-hook (lambda () (electric-indent-mode -1)))
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq-default indent-tabs-mode nil)
	    (setq-default tab-width 4)
	    (setq-default python-indent 4)))
;;;-----------------------------------------------------------------------------

(provide 'init-python)
