(prelude-require-packages '(clang-format
                            ))

(require 'clang-format)

(defun my-clang-format-setup ()
  (local-set-key (kbd "C-S-I") 'clang-format-region)
  (local-set-key (kbd "C-c C-f") 'clang-format-region))

(add-hook 'c-mode-hook #'my-clang-format-setup)
(add-hook 'c++-mode-hook #'my-clang-format-setup)
