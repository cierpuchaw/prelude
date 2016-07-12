(prelude-require-packages '(multiple-cursors
                            ))

(require 'multiple-cursors)

(global-set-key (kbd "C-c m") 'mc/mark-all-like-this-dwim)
