(prelude-require-packages '(lsp-mode
                            company-lsp
                            helm-xref
                            cquery
                            ))

(require 'cquery)
(setq cquery-extra-init-params '(:index (:comments 0 :builtinTypes t) :cacheFormat "msgpack"))
(setq xref-prompt-for-identifier '(not xref-find-definitions
                                       xref-find-definitions-other-window
                                       xref-find-definitions-other-frame
                                       xref-find-references))
(cond
 ((string-equal system-type "gnu/linux")
  (setq cquery-extra-args '("--log-stdin-stdout-to-stderr" "--log-file=/tmp/cquery.log"))))

(require 'lsp-imenu)
(add-hook 'lsp-after-open-hook 'lsp-enable-imenu)
(with-eval-after-load 'lsp-mode
  (require 'lsp-flycheck))

(require 'helm-xref)
(setq xref-show-xrefs-function 'helm-xref-show-xrefs)

(require 'company-lsp)
(push 'company-lsp company-backends)

;; Enable when in C/C++ modes
(defun my-cquery-cc-mode-setup ()
  (lsp-cquery-enable))

(add-hook 'c-mode-common-hook #'my-cquery-cc-mode-setup)
