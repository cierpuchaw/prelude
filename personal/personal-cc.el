;; headers as c++
(setq include-base-dir "/usr/include/")

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist (cons include-base-dir 'c++-mode))

;; style settings
(setq-default indent-tabs-mode nil
              c-indent-level 2
              c-default-style "bsd"
              c-basic-offset 2)

(custom-set-variables
 '(c-offsets-alist (quote ((innamespace . 0))))
 )

;; C++11 keywords
(font-lock-add-keywords 'c++-mode
                        '(("\\<\\(constexpr\\|decltype\\|nullptr\\|static_assert\\)\\>"
                           . font-lock-keyword-face)))
