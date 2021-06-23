;;; $DOOMDIR/lang/clojurescript.el -*- lexical-binding: t; -*-

(add-hook 'clojure-mode-hook 'lsp)
(add-hook 'clojurescript-mode-hook 'lsp)
(add-hook 'clojurec-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-minimum-prefix-length 1
      lsp-lens-enable t
      lsp-signature-auto-activate nil)

(setq lsp-clojure-custom-server-command '("bash" "-c" "/usr/bin/clojure-lsp"))
