(prelude-require-packages '(lsp-mode
                            lsp-ui))

(require 'lsp-mode)
(require 'lsp-ui)
(require 'lsp-ui-imenu)

(setq xref-prompt-for-identifier '(not xref-find-definitions
                                       xref-find-definitions-other-window
                                       xref-find-definitions-other-frame
                                       xref-find-references))

(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
(define-key lsp-ui-mode-map (kbd "C-c C-l .") 'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map (kbd "C-c C-l ?") 'lsp-ui-peek-find-references)
(define-key lsp-ui-mode-map (kbd "C-c C-l r") 'lsp-rename)
(define-key lsp-ui-mode-map (kbd "C-c C-l x") 'lsp-restart-workspace)
(define-key lsp-ui-mode-map (kbd "C-c C-l w") 'lsp-ui-peek-find-workspace-symbol)
(define-key lsp-ui-mode-map (kbd "C-c C-l i") 'lsp-ui-peek-find-implementation)
(define-key lsp-ui-mode-map (kbd "C-c C-l d") 'lsp-describe-thing-at-point)
(define-key lsp-ui-mode-map (kbd "C-c C-l e") 'lsp-execute-code-action)

(setq lsp-prefer-flymake nil)
;; (setq lsp-ui-sideline-enable t)
;; (setq lsp-ui-doc-enable t)
(setq lsp-ui-peek-enable t)
(setq lsp-ui-peek-always-show t)

(add-hook 'c-mode-common-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)
