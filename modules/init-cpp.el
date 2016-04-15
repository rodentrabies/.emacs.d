;;;-----------------------------------------------------------------------------
;;; c++ mode
;;;-----------------------------------------------------------------------------
(require 'utilities)
(require 'electric)
;; (require-package 'smartparens)
;; (require 'smartparens-config)

(defun brace-autoindent ()
  (when (and (eq major-mode 'c++-mode) (looking-back "[{]"))
    (newline-and-indent)
    (newline-and-indent)
    (previous-line)
    (indent-for-tab-command)))

(add-hook 'post-self-insert-hook 'brace-autoindent)

(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))

(setq c-default-style "k&r"
      c-basic-offset 4)

(add-hook 'c++-mode-hook 'electric-pair-mode)
;;;-----------------------------------------------------------------------------

(provide 'init-cpp)
