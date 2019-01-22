(prelude-require-packages '(lsp-mode
                            lsp-ui
                            company-lsp
                            helm-xref
                            cquery
                            ))

(require 'cquery)
(cond
 ((string-equal system-type "gnu/linux")
  (setq cquery-extra-args '("--log-stdin-stdout-to-stderr" "--log-file=/tmp/cquery.log"))))

(setq xref-prompt-for-identifier '(not xref-find-definitions
                                       xref-find-definitions-other-window
                                       xref-find-definitions-other-frame
                                       xref-find-references))

(require 'lsp-mode)
(require 'lsp-ui)
(require 'lsp-ui-imenu)

(setq lsp-prefer-flymake nil)
(setq lsp-ui-doc-enable nil)
(setq lsp-ui-peek-enable nil)
(setq lsp-ui-sideline-enable nil)

(require 'helm-xref)
(setq xref-show-xrefs-function 'helm-xref-show-xrefs)

(add-hook 'c-mode-common-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)
