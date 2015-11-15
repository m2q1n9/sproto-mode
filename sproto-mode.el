;;; sproto-mode.el --- major mode for editing sproto.

;; Author: m2q1n9
;; Created: 15-Nov-2015
;; Version: 0.1
;; Keywords: sproto

;;; Commentary:

;; Installation:
;;   - Put `sproto-mode.el' in your Emacs load-path.
;;   - Add this line to your .emacs file:
;;       (require 'sproto-mode)

;;; Code:

(define-derived-mode sproto-mode fundamental-mode "Sproto"
  (setq font-lock-defaults '((
    ("#.*$" . font-lock-comment-face)
    ("-*[0-9]+-*" . font-lock-constant-face)
    ("[\\.\\*][[:alnum:]]+" . font-lock-type-face)
    ("-*\\(string\\|integer\\|boolean\\|request\\|response\\)-*" . font-lock-keyword-face)
))))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.sproto\\'" . sproto-mode))

(provide 'sproto-mode)

;;; sproto-mode.el ends here
