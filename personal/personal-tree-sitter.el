(prelude-require-packages '(treesit-auto
                            ))

(require 'treesit-auto)

(setq treesit-auto-install 't)
(global-treesit-auto-mode)

(setq c-ts-mode-hook c-mode-hook)
(setq c++-ts-mode-hook c++-mode-hook)
(setq go-ts-mode-hook go-mode-hook)
(setq rust-ts-mode-hook rust-mode-hook)
