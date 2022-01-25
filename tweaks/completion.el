;;; $DOOMDIR/tweaks/completion.el -*- lexical-binding: t; -*-

(use-package! company
  :defer t
  :custom
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case nil)
  (company-idle-delay 0.3)
  (company-show-numbers t)
  (company-minimum-prefix-length 2)
  :config
  (setq company-tooltip-align-annotations t)
  (global-company-mode))

(use-package! company-lsp
  :defer t
  :custom
  (company-lsp-cache-candidates t)
  (company-lsp-async t)
  (company-lsp-enable-snippets nil)
  (company-lsp-enable-recompletion t))

;; (use-package! flycheck
;;   :config
;;   ;; (global-flycheck-mode)
;;   (setq flycheck-check-syntax-automatically t))

(use-package! prescient
  :defer t
  :config (prescient-persist-mode))

(use-package! ivy-prescient
  :defer t
  :config (ivy-prescient-mode))

(use-package! ivy-posframe
  :config
  (setq ivy-posframe-hide-minibuffer t)
  (setq ivy-posframe-width 70)
  (setq ivy-posframe-parameters '(
        (left-fringe . 5)
        (right-fringe . 5)))
  (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
  (setq ivy-posframe-border-width 1)
  (ivy-posframe-mode 0))

(use-package! company-prescient
  :defer t
  :config (company-prescient-mode))
