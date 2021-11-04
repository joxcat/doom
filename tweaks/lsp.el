;;; $DOOMDIR/tweaks/lsp.el -*- lexical-binding: t; -*-

(use-package! lsp-mode
  :commands lsp
  :custom
  (read-process-output-max (* 1024 1024))
  :config
  (setq lsp-enable-imenu t)
  (setq lsp-eldoc-render-all t)
  (setq lsp-idle-delay 0.5)
  (setq lsp-enable-snippet nil)
  ;; https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/
  (setq lsp-lens-enable t)
  ;; (setq lsp-headerline-breadcrumb-enable t)
  (setq lsp-modeline-code-actions-enable t)
  (setq lsp-modeline-diagnostics-enable t)
  (setq lsp-completion-show-detail t)
  (setq lsp-completion-show-kind t)
  (setq lsp-eslint-validate '(javascript javascriptreact typescript typescriptreact vue))
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))
  ;; (setq lsp-eslint-auto-fix-on-save t))

(use-package! lsp-ui
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-header nil)
  (setq lsp-ui-doc-signature nil)
  (setq lsp-ui-doc-position 'at-point)
  (setq lsp-ui-doc-delay 0.2)
  (setq lsp-ui-doc-use-childframe t)
  (setq lsp-ui-doc-show-with-cursor nil)
  (setq lsp-ui-doc-show-with-mouse t)
  (setq lsp-ui-peek-enable t)
  (setq lsp-ui-peek-always-show t)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-sideline-show-hover nil)
  (setq lsp-ui-sideline-show-diagnostics nil))
