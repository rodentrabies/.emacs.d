;;;-----------------------------------------------------------------------------
;;; enable package management
;;;-----------------------------------------------------------------------------
(defun require-package (package)
  (if (package-installed-p package)
      (require package)
    (progn
      (package-refresh-contents)
      (package-install package)
      (require package))))

(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
  

;;;-----------------------------------------------------------------------------

(provide 'init-elpa)
