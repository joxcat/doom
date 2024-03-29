;;; $DOOMDIR/lang/jsts.el -*- lexical-binding: t; -*-

;; Tide
(defun setup-tide-mode ()
  (tide-setup)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode))
  ;; (tide-hl-identifier-mode))

;; Specifics
(use-package! json-mode
  :defer t
  :mode ("\\.json$" . json-mode)
  :config
  (add-to-list 'flycheck-disabled-checkers 'json-python-json))

;; (use-package! prettier
;;   :hook (typescript-mode . prettier-mode))

(use-package! web-mode
  :mode (("\\.tsx$" . web-mode)
         ("\\.jsx$" . web-mode))
  :hook ((web-mode . lsp)
         (web-mode . prettier-js-mode)))

(use-package! typescript-mode
  :mode ("\\.ts$" . typescript-mode)
  :hook ((typescript-mode . lsp))
         (typescript-mode . setup-tide-mode)
         (typescript-mode . prettier-js-mode))

(use-package! js2-mode
  :mode ("\\.js$" . js2-mode)
  :hook ((js2-mode . lsp))
         (js2-mode . setup-tide-mode)
         (js2-mode . prettier-js-mode))
