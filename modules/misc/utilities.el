;;;-----------------------------------------------------------------------------
;;; utilities
;;;-----------------------------------------------------------------------------
(defun electric-pair ()
  "If at the end of line, insert character pair without surrounding spaces.
   Otherwise, just insert the typed character."
  (interactive)
  (if (eolp)
      (let (parens-require-spaces)
	(insert-pair)) 
    (self-insert-command 1)))

;;;-----------------------------------------------------------------------------

(provide 'utilities)
