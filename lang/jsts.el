;;; $DOOMDIR/lang/jsts.el -*- lexical-binding: t; -*-

(use-package! json-mode
  :mode "\\.json$"
  :config
  (add-to-list 'flycheck-disabled-checkers 'json-python-json))

(use-package! prettier
  :hook (typescript-mode . prettier-mode))

(use-package! web-mode
  :mode (("\\.ts$" . web-mode)
         ("\\.tsx$" . web-mode)
         ("\\.js$" . web-mode)
         ("\\.jsx$" . web-mode))
  :hook ((typescript-mode . web-mode)
         (web-mode . lsp))
  :config
  (setq lsp-eslint-auto-fix-on-save t)
  (flycheck-add-next-checker 'lsp-ui 'typescript-tslint)
  (setq flycheck-check-syntax-automatically t)
  (setq company-tooltip-align-annotations t))
