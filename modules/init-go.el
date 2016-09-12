;;;-----------------------------------------------------------------------------
;;; golang
;;;-----------------------------------------------------------------------------
(require-package 'go-mode)
(require-package 'exec-path-from-shell)
(require-package 'go-autocomplete)

(add-to-list 'exec-path "~/01_code/go/bin")

(defun go-mode-custom-hook ()
  ;; format with gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; jump to definition via M-.
  (local-set-key (kbd "M-.") 'godef-jump)
  ;; enable autocomplete
  (auto-complete-mode 1))

(add-hook 'go-mode-hook 'go-mode-custom-hook)
;;;-----------------------------------------------------------------------------
(provide 'init-go)
