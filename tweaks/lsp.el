;;; $DOOMDIR/tweaks/lsp.el -*- lexical-binding: t; -*-

(use-package! lsp-mode
  :defer t
  :commands lsp
  :custom
  (read-process-output-max (* 1024 1024))
  :config
  (setq lsp-log-io nil)
  (setq lsp-enable-imenu t)
  (setq lsp-eldoc-render-all t)
  (setq lsp-idle-delay 0.6)
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
  :defer t
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-doc-enable nil)
  (setq lsp-ui-doc-header nil)
  (setq lsp-ui-doc-signature nil)
  (setq lsp-ui-doc-position 'at-point)
  (setq lsp-ui-doc-delay 0.2)
  (setq lsp-ui-doc-use-childframe t)
  (setq lsp-ui-doc-show-with-cursor t)
  (setq lsp-ui-doc-show-with-mouse nil)
  (setq lsp-ui-doc-enhanced-markdown t)
  (setq lsp-ui-peek-enable nil)
  (setq lsp-ui-peek-always-show nil)
  (setq lsp-ui-imenu-enable t)
  (setq lsp-ui-imenu-kind-position 'left)
  (setq lsp-ui-imenu-auto-refresh 'after-save)
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-sideline-delay 0.2)
  (setq lsp-ui-sideline-show-hover t)
  (setq lsp-ui-sideline-show-diagnostics t))
