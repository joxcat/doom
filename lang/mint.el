;;; $DOOMDIR/lang/mint.el -*- lexical-binding: t; -*-

(use-package! mint-mode
  :defer t
  :mode ("\\.mint\\'" . mint-mode))

(with-eval-after-load 'lsp-mode
  (add-to-list 'lsp-language-id-configuration
               '(mint-mode . "mint"))
  (lsp-register-client
   (make-lsp-client :new-connection (lsp-stdio-connection '("mint" "ls"))
                    :activation-fn (lsp-activate-on "mint")
                    :server-id 'mint)))
