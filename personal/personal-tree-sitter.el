(prelude-require-packages '(tree-sitter
                            tree-sitter-langs))

(add-hook 'c-mode-hook #'tree-sitter-hl-mode)
(add-hook 'c++-mode-hook #'tree-sitter-hl-mode)
(add-hook 'python-mode-hook #'tree-sitter-hl-mode)
