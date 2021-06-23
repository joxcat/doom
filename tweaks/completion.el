;;; $DOOMDIR/tweaks/completion.el -*- lexical-binding: t; -*-

(use-package! company
  :custom
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case nil)
  (company-idle-delay 0)
  (company-show-numbers t)
  (company-minimum-prefix-length 2)
  :config
  (global-company-mode))

(use-package! flycheck
  :config (global-flycheck-mode))

(use-package! prescient
  :config (prescient-persist-mode 1))

(use-package! ivy-prescient
  :config (ivy-prescient-mode 1))

(use-package! company-prescient
  :config (company-prescient-mode 1))
