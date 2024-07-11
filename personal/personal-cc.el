(prelude-require-packages '(cmake-mode
                            ))

;; headers as c++
(setq include-base-dir "/usr/include/")

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist (cons include-base-dir 'c++-mode))

(defun my-cc-whitespace ()
  (setq tab-width 4)
  (whitespace-toggle-options '(tabs tab-mark))
  )

;; doesn't work when added to cc-mode-hook
(add-hook 'c++-mode-hook 'my-cc-whitespace)
(add-hook 'c-mode-hook 'my-cc-whitespace)

;; style settings
(defun my-cc-style ()
  (setq indent-tabs-mode nil
        c-indent-level 2
        c-basic-offset 2
        c-default-style "bsd")
  )

(add-hook 'cc-mode-hook 'my-cc-style)

(defun my-cxx-style ()
  (c-set-offset 'innamespace [0])
  )

(add-hook 'c++-mode-hook 'my-cxx-style)

(defun c-ts-indent-style()
  "Override the built-in BSD indentation style with some additional rules"
  `( ;; align function arguments to the start of the first one, offset if standalone
    ((match nil "argument_list" nil 1 1) parent-bol c-ts-mode-indent-offset)
    ((parent-is "argument_list") (nth-sibling 1) 0)
    ;; same for parameters
    ((match nil "parameter_list" nil 1 1) parent-bol c-ts-mode-indent-offset)
    ((parent-is "parameter_list") (nth-sibling 1) 0)
    ;; indent inside case blocks
    ((parent-is "case_statement") standalone-parent c-ts-mode-indent-offset)
    ;; do not indent preprocessor statements
    ((node-is "preproc") column-0 0)
    ;; append to bsd style ,@
    (alist-get 'bsd (c-ts-mode--indent-styles 'cpp))
    ((n-p-gp nil nil "namespace_definition") grand-parent 0)))

(setq c-ts-mode-indent-style #'c-ts-indent-style)
