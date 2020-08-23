(prelude-require-packages '(go-mode
                            ))

(require 'go-mode)

(defun my-go-setup ()
  (local-set-key (kbd "C-S-I") 'gofmt)
  (local-set-key (kbd "C-c C-f") 'gofmt)
  (let ((goimports (executable-find "goimports")))
    (when goimports
      (setq gofmt-command goimports)))
  (add-hook 'before-save-hook 'gofmt-before-save nil t)
  (setq tab-width 4)
  (whitespace-toggle-options '(tabs))
  (setq super-save-exclude '(".go"))
  )

(add-hook 'go-mode-hook #'my-go-setup)
