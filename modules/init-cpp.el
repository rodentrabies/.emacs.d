;;;-----------------------------------------------------------------------------
;;; c++ mode
;;;-----------------------------------------------------------------------------
(require 'utilities)
(require 'electric)
(require-package 'rtags)
(require-package 'cmake-ide)

(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))

(setq c-default-style "k&r"
      c-basic-offset 4)

(add-hook 'c++-mode-hook 'electric-pair-mode)
(add-hook 'c++-mode-hook 'cmake-ide-setup)
(add-hook 'c++-mode-hook 'electric-pair-mode)
;;;-----------------------------------------------------------------------------

(provide 'init-cpp)
