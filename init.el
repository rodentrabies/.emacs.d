;;;;----------------------------------------------------------------------------
;;;; emacs init file
;;;;----------------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/modules")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

;;;-----------------------------------------------------------------------------
;;; initialize general settings
;;;-----------------------------------------------------------------------------
(tool-bar-mode -1) ; no toolbar
(menu-bar-mode -1) ; no menu
(scroll-bar-mode -1) ; no scrollbar
(setq inhibit-splash-screen t) ; no splash screen

;; metainformation
(add-hook
 'prog-mode-hook
 '(lambda ()
    (linum-mode 1)
    (column-number-mode 1)))

;; dynamic abbreviation 
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)

;; autoindentation
(global-set-key (kbd "RET") 'newline-and-indent)
;;;-----------------------------------------------------------------------------


;;;-----------------------------------------------------------------------------
;;; modules
;;;-----------------------------------------------------------------------------
(require 'init-global-packages)
(require 'init-language-modes)
;;;-----------------------------------------------------------------------------

(provide 'init)

