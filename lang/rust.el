;;; $DOOMDIR/lang/rust.el -*- lexical-binding: t; -*-

;; RUUUST
(use-package! rustic
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-?" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
              ("C-c C-c s" . lsp-rust-analyzer-status))
  :config
  ;; comment to disable rustfmt on save
  (setq rustic-format-on-save t)
  (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook)
  :custom
  (rustic-format-trigger 'on-save)
  (rustic-lsp-server 'rust-analyser)
  (rustic-analyzer-command '("rust-analyzer"))
  (lsp-rust-server 'rust-analyser)
  (lsp-rust-analyzer-server-command '("rust-analyzer"))
  (lsp-enable-file-watchers nil)
  (lsp-enable-completion-at-point t)
  (lsp-enable-imenu t)
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-rust-analyzer-server-display-inlay-hints t)
  (lsp-rust-analyzer-cargo-watch-enable t))

(defun rk/rustic-mode-hook ()
  ;; so that run C-c C-c C-r works without having to confirm
  (setq-local buffer-save-without-query t)
  (setq-local lsp-ui-sideline-enable nil))

(setq lsp-rust-analyzer-server-display-inlay-hints t)
