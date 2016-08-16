;;;-----------------------------------------------------------------------------
;;; enable package management
;;;-----------------------------------------------------------------------------
(require 'package)

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("marmalade" . "https://marmalade-repo.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("elpy" . "https://jorgenschaefer.github.io/packages/")))

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
