;;; $DOOMDIR/lang/jsts.el -*- lexical-binding: t; -*-

;; Typescript
(use-package! json-mode
  :mode "\\.json$"
  :config
  (add-to-list 'flycheck-disabled-checkers 'json-python-json))

(use-package! typescript-mode
  :mode "\\.tsx?$"
  :hook
  (typescript-mode . lsp)
  :custom
  (typescript-indent-level 2))

(use-package! prettier
  :hook
  ((typescript-mode json-mode) . prettier-mode))
