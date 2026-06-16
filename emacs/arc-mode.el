;;; arc-mode.el --- Major mode for Arc language -*- lexical-binding: t; -*-
;;;
(defvar arc-mode-hook nil)

(defvar arc-mode-map
  (let ((map (make-sparse-keymap)))
    map)
  "Keymap for Arc major mode")

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.arc\\'" . arc-mode))

(defconst arc-font-lock-keywords
  `(
    ;; Keywords
    (,(regexp-opt
       '("IF" "THEN" "ELIF" "ELSE" "WHILE" "FOR" "IN"
         "END" "FN" "VAR" "RETURN" "IMPORT"
         "TRY" "CATCH" "BREAK" "CONTINUE" "CLASS" "FALSE" "TRUE" "OR" "AND" "NOT")
       'words)
     . font-lock-keyword-face)

    ;; Comments
    ("#.*$" . font-lock-comment-face)

    ;; Functions
    ("\\b\\([a-zA-Z_][a-zA-Z0-9_]*\\)\\s-*("
     1 font-lock-function-name-face)

    ;; Numbers
    ("\\b[0-9]+\\(\\.[0-9]+\\)?\\b"
     . font-lock-constant-face)

    ;; Strings
    ("\"\\(?:[^\"\\\\]\\|\\\\.\\)*\""
     . font-lock-string-face)))

;;;###autoload
(define-derived-mode arc-mode prog-mode "Arc"
  "Major mode for editing Arc language."

  (setq-local font-lock-defaults '(arc-font-lock-keywords))
  
  (setq-local indent-tabs-mode nil)
  (setq-local tab-width 2)
  (setq-local standard-indent 2)

  )

(provide 'arc-mode)
