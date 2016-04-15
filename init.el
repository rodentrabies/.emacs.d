;;;;----------------------------------------------------------------------------
;;;; emacs init file
;;;;----------------------------------------------------------------------------

;; add all subdirectories to load pat
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))


;;;-----------------------------------------------------------------------------
;;; initialize general settings
;;;-----------------------------------------------------------------------------
(require 'utilities)
(require 'init-packages)
(require 'init-appearance)
;;;-----------------------------------------------------------------------------


;;;-----------------------------------------------------------------------------
;;; general settings
;;;-----------------------------------------------------------------------------
;; dynamic abbreviation 
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)

;; autoindentation
(global-set-key (kbd "RET") 'newline-and-indent)

;; custom interface
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;;;-----------------------------------------------------------------------------


;;;-----------------------------------------------------------------------------
;;; initialize language modules
;;;-----------------------------------------------------------------------------
(require 'init-common-lisp)
(require 'init-paredit)
(require 'init-haskell)
(require 'init-clojure)
(require 'init-cpp)
(require 'init-lfe)
;; (require 'init-python)
;;;-----------------------------------------------------------------------------

(provide 'init)

