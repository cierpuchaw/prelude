(setq xref-prompt-for-identifier '(not xref-find-definitions
                                       xref-find-definitions-other-window
                                       xref-find-definitions-other-frame
                                       xref-find-references))

(setq lsp-prefer-flymake nil)

(add-hook 'c-mode-common-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)
