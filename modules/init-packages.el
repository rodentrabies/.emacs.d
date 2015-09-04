;;;-----------------------------------------------------------------------------
;;; enable package management
;;;-----------------------------------------------------------------------------
(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/"))

(package-initialize)

(defun require-package (feature-symbol &optional package-symbol)
  (let ((package-to-install (or package-symbol
				feature-symbol)))
    (package-install-if-not-present package-to-install)
    (require feature-symbol)))

(defun package-install-if-not-present (package-symbol)
  (unless (package-installed-p package-symbol)
    (package-refresh-contents)
    (package-install package-symbol)))
;;;-----------------------------------------------------------------------------

(provide 'init-packages)
