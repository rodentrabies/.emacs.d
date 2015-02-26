;;;-----------------------------------------------------------------------------
;;; rust
;;;-----------------------------------------------------------------------------
(require-package 'rust-mode)

;; smartparens
(require-package 'smartparens)
(add-hook 'rust-mode-hook 'smartparens-mode)

;; RACER
;; todo
;(setq racer-rust-src-path "~/.emacs.d/racer/src/")
;(setq racer-cmd "~/.emacs.d/racer/target/release/racer")
;(add-to-list 'load-path "~/.emacs.d/racer/editors")
;(eval-after-load "rust-mode" '(require 'racer))

;;;-----------------------------------------------------------------------------

(provide 'init-rust)
