(require 'company)

(setq company-backends (delete 'company-semantic company-backends))

(global-set-key [(control return)] 'company-complete)

;; silence warning about 'unsafe' variable when setting it through .dir-locals.el
(put 'company-clang-arguments 'safe-local-variable (lambda (xx) t))
