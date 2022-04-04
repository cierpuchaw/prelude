(prelude-require-packages '(asn1-mode
                            ))

(add-to-list 'auto-mode-alist '("\\.asn\\'" . asn1-mode))
(add-to-list 'auto-mode-alist '("\\.acn\\'" . asn1-mode))
