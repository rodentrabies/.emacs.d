;;;-----------------------------------------------------------------------------
;;; c++ mode
;;;-----------------------------------------------------------------------------
(require 'utilities)
(require 'electric)
(require-package 'rtags)
(require-package 'cmake-ide)

(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))

(defun cpp-setup ()
  (setq c-default-style "k&r"
        c-basic-offset 4)
  (electric-pair-mode 1)
  (cmake-ide-setup)
  (electric-pair-mode 1))

(add-hook 'c++-mode-hook 'cpp-setup)
;;;-----------------------------------------------------------------------------

(provide 'init-cpp)
