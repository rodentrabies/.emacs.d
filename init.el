;;;;----------------------------------------------------------------------------
;;;; emacs init file
;;;;----------------------------------------------------------------------------


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

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
(tool-bar-mode -1)             ; no toolbar
(menu-bar-mode -1)             ; no menu
(scroll-bar-mode -1)           ; no scrollbar
(setq inhibit-splash-screen t) ; no splash screen
(global-linum-mode 1)          ; line numbering
(column-number-mode 1)         ; column numbers
(which-function-mode -1)       ; do not show enclosing functions

;; font settings
(add-to-list 'default-frame-alist '(font . "Monaco-10:weight=bold"))
(setq-default indent-tabs-mode nil)
(set-frame-font "Monaco-10:weight=bold" nil t)

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
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(company-ghc-show-info t)
;;  '(package-selected-packages (quote (ghc racer company queue minimap))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-ghc-show-info t)
 '(package-selected-packages
   (quote
    (kaolin-themes helm ghc racer company queue minimap))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
