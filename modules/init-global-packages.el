;;;;----------------------------------------------------------------------------
;;;; required packages and initialization code for global settings
;;;;----------------------------------------------------------------------------


;; themes
(el-get-bundle! autothemer)
(el-get-bundle! dash)
(el-get-bundle! kaolin-themes
  :url "https://github.com/ogdenwebb/emacs-kaolin-themes.git"
  (load-theme 'kaolin-aurora t))

(el-get-bundle! telephone-line
  (setq
   telephone-line-primary-left-separator 'telephone-line-cos-left
   telephone-line-secondary-left-separator 'telephone-line-cos-hollow-left
   telephone-line-primary-right-separator 'telephone-line-cos-right
   telephone-line-secondary-right-separator 'telephone-line-cos-hollow-right)
  (telephone-line-mode 1))

;; remove invasive modeline strings
(el-get-bundle! delight
  (delight '((slime-mode nil slime))))

;; fireplace :)
(el-get-bundle fireplace
  :url "https://github.com/johanvts/emacs-fireplace.git")

;; ido
(require 'ido)
(setq ido-default-buffer-method 'selected-window)
(ido-mode t)

(el-get-bundle magit
  (global-set-key (kbd "C-c g") 'magit-status)
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1))

;; minimap
(el-get-bundle minimap)
(add-hook 'minimap-sb-mode-hook
          (lambda ()
            ;; (set-face-background 'minimap-active-region-background "dark olive green")
            (setq mode-line-format nil)))

(el-get-bundle markdown-mode)

;; paredit
(el-get-bundle! paredit
  (autoload 'enable-paredit-mode 
    "paredit" 
    "Turn on pseudo-structural editing of Lisp code.")
  (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook #'enable-paredit-mode))


;; rainbow delimiters
(el-get-bundle rainbow-delimiters
  (add-hook 'lisp-mode-hook 'rainbow-delimiters-mode))

(el-get-bundle! highlight-symbol
  (setq highlight-symbol-on-navigation-p t)
  (global-set-key (kbd "C-c j") 'highlight-symbol)
  ;; (global-set-key (kbd "C-c C-j") 'highlight-symbol-next)
  ;; (global-set-key (kbd "C-c M-j") 'highlight-symbol-prev)
  (global-set-key (kbd "C-c M-j") 'highlight-symbol-query-replace))

(require 'paren)
(show-paren-mode 1)
(setq show-paren-delay 0)
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)


;; custom hooks


(defun prog-mode-add-custom-keys ()
  ;; comment fence generator
  (local-set-key
   (kbd "C-c C-f")
   (lambda ()
     (interactive)
     ;; insert upper fence
     (comment-dwim nil)
     (delete-backward-char 1)
     (insert-char ?- (- 80 (current-column)))
     (newline-and-indent)
     ;; insert lower fence
     (newline-and-indent)
     (comment-dwim nil)
     (delete-backward-char 1)
     (insert-char ?- (- 80 (current-column)))
     ;; insert description line
     (previous-line)
     (comment-dwim nil))))

(defun prog-mode-custom-hook ()
  (prog-mode-add-custom-keys)
  (highlight-symbol-mode 1))

(add-hook 'prog-mode-hook 'prog-mode-custom-hook)




(provide 'init-global-packages)
