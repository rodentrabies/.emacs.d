;;;-----------------------------------------------------------------------------
;;; common lisp
;;;-----------------------------------------------------------------------------
(require-package 'slime)
(require 'slime-autoloads)

;; set lisp interpreter
(setq inferior-lisp-program "/usr/bin/sbcl")

;; slime contribs
(setq slime-contribs '(slime-fancy))

;; hyperspec setup - use shift+F1 to open Hyperspec documentation
(global-set-key [(shift f1)]
  '(lambda ()
     (interactive)
     (let (;; (browse-url-browser-function 'browse-url-w3)
	     (common-lisp-hyperspec-root            
             "file:///home/whythat/.emacs.d/HyperSpec/"))
	 (slime-hyperspec-lookup (thing-at-point 'symbol)))))

;; set Hyperspec location
(setq common-lisp-hyperspec-root            
      "file:/home/whythat/.emacs.d/HyperSpec/") 


(provide 'init-common-lisp)
