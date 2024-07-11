(prelude-require-packages '(yaml-mode
                            highlight-indent-guides
                            ))

(add-hook 'yaml-mode-hook 'highlight-indent-guides-mode)
