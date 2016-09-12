;;;-----------------------------------------------------------------------------
;;; python
;;;-----------------------------------------------------------------------------
(require-package 'elpy)
(require-package 'smartparens)

(defun python-mode-custom-hook ()
  (smartparens-mode 1)
  (highlight-indentation-mode 0))

(add-hook 'python-mode-hook 'python-mode-custom-hook)

(elpy-enable)
;;;-----------------------------------------------------------------------------

(provide 'init-python)
