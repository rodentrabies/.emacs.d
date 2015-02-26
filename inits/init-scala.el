;;;-----------------------------------------------------------------------------
;;; scala
;;;-----------------------------------------------------------------------------
;; ensime
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; smartparens
(require 'smartparens)
(add-hook 'scala-mode-hook 'smartparens-mode)

;;;-----------------------------------------------------------------------------

(provide 'init-scala)
