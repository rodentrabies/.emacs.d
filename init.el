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
(require 'init-paredit) 
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
(require 'init-python)      ; IDE
(require 'init-go)          ; IDE
(require 'init-common-lisp) ; IDE
(require 'init-clojure)     ; IDE
(require 'init-rust)
(require 'init-haskell)
(require 'init-cpp)
;;;-----------------------------------------------------------------------------

(provide 'init)

