(prelude-require-packages '(lsp-mode
                            lsp-ui
                            lsp-go
                            company-lsp
                            helm-xref
                            cquery
                            ))

(require 'cquery)
(setq cquery-extra-init-params '(:index (:comments 0 :builtinTypes t) :cacheFormat "msgpack"))
(cond
 ((string-equal system-type "gnu/linux")
  (setq cquery-extra-args '("--log-stdin-stdout-to-stderr" "--log-file=/tmp/cquery.log"))))

(setq xref-prompt-for-identifier '(not xref-find-definitions
                                       xref-find-definitions-other-window
                                       xref-find-definitions-other-frame
                                       xref-find-references))

(require 'lsp-imenu)
(add-hook 'lsp-after-open-hook 'lsp-enable-imenu)

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(require 'helm-xref)
(setq xref-show-xrefs-function 'helm-xref-show-xrefs)

(require 'company-lsp)
(push 'company-lsp company-backends)

(add-hook 'c-mode-common-hook #'lsp-cquery-enable)

(require 'lsp-go)
(add-hook 'go-mode-hook #'lsp-go-enable)
