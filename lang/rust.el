;;; $DOOMDIR/lang/rust.el -*- lexical-binding: t; -*-

;; RUUUST
(use-package! rustic
  :defer t
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
  (setq rustic-format-trigger 'on-save)
  (setq rustic-analyzer-command '("~/.cargo/bin/rust-analyzer"))
  (setq lsp-rust-analyzer-server-display-inlay-hints t)
  (setq lsp-rust-analyzer-display-parameter-hints t)
  (setq lsp-rust-analyzer-display-chaining-hints t)
  (setq lsp-rust-analyzer-cargo-watch-enable t)
  (setq lsp-rust-analyzer-cargo-watch-command "clippy")
  (setq lsp-rust-analyzer-call-info-full t)
  (setq lsp-rust-analyzer-proc-macro-enable t)
  (setq lsp-rust-analyzer-experimental-proc-attr-macros nil)
  (setq lsp-rust-analyzer-rustfmt-extra-args ["--edition=2021"])
  (setq lsp-rust-analyzer-completion-add-call-parenthesis nil))
