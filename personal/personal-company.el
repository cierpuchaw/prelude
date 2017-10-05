(prelude-require-packages '(company-c-headers
                            ))

(require 'company)
(require 'company-c-headers)

(setq company-backends (delete 'company-semantic company-backends))
(setq company-backends (delete 'company-clang company-backends))
(add-to-list 'company-backends 'company-c-headers)

(global-set-key [(control return)] 'company-complete)
(global-set-key (kbd "C-c c") 'company-complete)

;; silence warning about 'unsafe' variable when setting it through .dir-locals.el
(put 'company-clang-arguments 'safe-local-variable (lambda (xx) t))
(put 'company-c-headers-path-system 'safe-local-variable (lambda (xx) t))
