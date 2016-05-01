;;;-----------------------------------------------------------------------------
;;; c++ mode
;;;-----------------------------------------------------------------------------
(require 'utilities)
(require 'electric)

(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))

(setq c-default-style "k&r"
      c-basic-offset 4)

(add-hook 'c++-mode-hook 'electric-pair-mode)
;;;-----------------------------------------------------------------------------

(provide 'init-cpp)
