;; headers as c++
(setq include-base-dir "/usr/include/")

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist (cons include-base-dir 'c++-mode))

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

;; C++11 keywords
(font-lock-add-keywords 'c++-mode
                        '(("\\<\\(constexpr\\|decltype\\|nullptr\\|static_assert\\)\\>"
                           . font-lock-keyword-face)))
