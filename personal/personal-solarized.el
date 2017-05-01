(prelude-require-packages '(solarized-theme
                            ))

(disable-theme 'zenburn)
(setq prelude-theme 'solarized-dark)
(load-theme prelude-theme t)

(custom-set-faces (if (not window-system) '(default ((t (:background "nil"))))))
