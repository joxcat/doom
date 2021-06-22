;;; $DOOMDIR/tweaks/completion.el -*- lexical-binding: t; -*-

(use-package! company
  :custom
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case nil)
  (company-idle-delay 0)
  :config
  (global-company-mode))

(use-package! flycheck
  :config (global-flycheck-mode))
