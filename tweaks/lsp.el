;;; $DOOMDIR/tweaks/lsp.el -*- lexical-binding: t; -*-

(use-package! lsp-mode
  :commands lsp
  :custom
  (read-process-output-max (* 1024 1024))
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-eldoc-render-all t)
  (lsp-idle-delay 0.6)
  (lsp-rust-analyzer-server-display-inlay-hints t)
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  (setq lsp-eslint-auto-fix-on-save t))

(use-package! lsp-ui
  :commands lsp-ui-mode
  :custom
  (lsp-ui-doc-header t)
  (lsp-ui-doc-position 'top)
  (lsp-ui-doc-delay 1)
  (lsp-ui-doc-use-childframe 't)
  (lsp-ui-sideline-show-diagnostics nil)
  (lsp-eslint-validate '(javascript javascriptreact typescript typescriptreact vue))
  ;; https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/
  (lsp-lens-enable t)
  (lsp-headerline-breadcrumb-enable t)
  (lsp-modeline-code-actions-enable t)
  (lsp-modeline-diagnostics-enable t)
  (lsp-completion-show-detail t)
  (lsp-completion-show-kind t)
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t))
  ;;(lsp-ui-doc-enable nil)

;; LSP improvements
(with-eval-after-load 'lsp-mode
  ;; enable log only for debug
  ;(setq lsp-log-io nil)
  ;; handle yasnippet externally
  (setq lsp-enable-snippet nil))
