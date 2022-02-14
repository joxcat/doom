;;; $DOOMDIR/lang/hy.el -*- lexical-binding: t; -*-

(use-package! hy-mode
  :defer t
  :config
  (after! lsp-mode
    (add-to-list 'lsp-language-id-configuration
                 '(hy-mode . "hy"))

    (lsp-register-client
     (make-lsp-client :new-connection (lsp-stdio-connection "hyls")
                      :activation-fn (lsp-activate-on "hy")
                      :server-id 'hyls))))
