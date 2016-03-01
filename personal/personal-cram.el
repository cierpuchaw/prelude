(define-generic-mode 'cram-test-mode
  nil
  nil
  '(
    ("^[^ ].*$" . 'font-lock-comment-face)
    ("^ [^ ].*$" . 'font-lock-comment-face)
    ("^  \$.*$" . 'font-lock-constant-face)
    ("^  > .*$" . 'font-lock-constant-face)
    ("(\\(re\\|glob\\|no-eol\\|esc\\))$" . 'font-lock-keyword-face)
    )
  '("\\.t\\'")
  nil
  "Major mode for highlighting in cram tests")
