;;;-----------------------------------------------------------------------------
;;; rust
;;;-----------------------------------------------------------------------------
(require-package 'rust-mode)
(require-package 'racer)

(setq racer-rust-src-path "/home/whythat/00_util/rust/src/")

;; smartparens
(require-package 'smartparens)
(add-hook 'rust-mode-hook 'smartparens-mode)

;; hooks
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)

(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
;;;-----------------------------------------------------------------------------

(provide 'init-rust)
